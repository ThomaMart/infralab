#!/usr/bin/env bash
set -Eeuo pipefail

################################################################################
# InfraLab - Debian Golden Template Builder
################################################################################

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

if [[ ! -f "${SCRIPT_DIR}/template.env" ]]; then
  cp "${SCRIPT_DIR}/template.env.example" "${SCRIPT_DIR}/template.env"
  echo "Configuration created: ${SCRIPT_DIR}/template.env"
  echo "Review it, then rerun the script."
  exit 1
fi

# shellcheck disable=SC1091
source "${SCRIPT_DIR}/template.env"

readonly ISO_DIR="/var/lib/vz/template/iso"
readonly IMAGE_NAME="debian-${DEBIAN_VERSION}-genericcloud-${ARCH}.qcow2"
readonly IMAGE_URL="https://cloud.debian.org/images/cloud/${DEBIAN_RELEASE}/latest/${IMAGE_NAME}"
readonly IMAGE="${ISO_DIR}/${IMAGE_NAME}"
readonly WORK_IMAGE="${ISO_DIR}/build-${IMAGE_NAME}"

RED="\033[31m"; GREEN="\033[32m"; BLUE="\033[34m"; YELLOW="\033[33m"; NC="\033[0m"

info(){ echo -e "${BLUE}[INFO]${NC} $1"; }
ok(){ echo -e "${GREEN}[ OK ]${NC} $1"; }
warn(){ echo -e "${YELLOW}[WARN]${NC} $1"; }
fail(){ echo -e "${RED}[FAIL]${NC} $1"; }

cleanup(){ rm -f "$WORK_IMAGE"; }
trap 'fail "Error on line $LINENO"; cleanup' ERR

require_root(){ [[ $EUID -eq 0 ]] || { fail "Run as root"; exit 1; }; }
require_cmd(){ command -v "$1" >/dev/null || { fail "Missing command: $1"; exit 1; }; }

check_env() {
  info "Checking environment"
  require_cmd qm
  require_cmd pvesm
  require_cmd wget
  require_cmd cp

  if ! command -v virt-customize >/dev/null; then
    info "Installing libguestfs-tools"
    apt-get update
    apt-get install -y libguestfs-tools
  fi

  ip link show "$BRIDGE" >/dev/null || { fail "Bridge $BRIDGE not found"; exit 1; }
  pvesm status | awk '{print $1}' | grep -qx "$STORAGE" || { fail "Storage $STORAGE not found"; exit 1; }
  ok "Environment OK"
}

download_image() {
  mkdir -p "$ISO_DIR"
  if [[ ! -f "$IMAGE" ]]; then
    info "Downloading Debian cloud image"
    wget -O "$IMAGE" "$IMAGE_URL"
  else
    ok "Official image already present"
  fi
}

prepare_image() {
  info "Preparing working image"
  cp -f "$IMAGE" "$WORK_IMAGE"
  virt-customize -a "$WORK_IMAGE" --install qemu-guest-agent
  virt-customize -a "$WORK_IMAGE" --truncate /etc/machine-id
  ok "Working image ready"
}

destroy_previous() {
  if qm config "$VMID" >/dev/null 2>&1; then
    warn "Removing previous VM/template $VMID"
    qm stop "$VMID" 2>/dev/null || true
    qm destroy "$VMID" --purge || true
  fi
}

create_vm() {
  info "Creating VM"

  qm create "$VMID" \
    --name "$VM_NAME" \
    --memory "$MEMORY" \
    --cores "$CORES" \
    --net0 virtio,bridge="$BRIDGE" \
    --scsihw virtio-scsi-pci \
    --serial0 socket \
    --vga serial0 \
    --agent enabled=1

  qm importdisk "$VMID" "$WORK_IMAGE" "$STORAGE"

  qm set "$VMID" --scsi0 "${STORAGE}:vm-${VMID}-disk-0"
  qm set "$VMID" --ide2 "${STORAGE}:cloudinit"
  qm set "$VMID" --boot order=scsi0
  qm set "$VMID" --ipconfig0 ip=dhcp

  qm template "$VMID"

  ok "Template created"
}

verify() {
  info "Verifying template"
  qm config "$VMID" | grep -q "template: 1"
  qm config "$VMID" | grep -q "agent: enabled=1"
  ok "Verification successful"
}

main() {
  require_root
  check_env
  download_image
  prepare_image
  destroy_previous
  create_vm
  verify
  cleanup

  echo
  echo "========================================"
  echo " Debian Golden Template Ready"
  echo "========================================"
  echo " VMID     : $VMID"
  echo " Name     : $VM_NAME"
  echo " Storage  : $STORAGE"
}

main
