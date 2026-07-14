# 🚀 InfraLab

<p align="center">

![Terraform](https://img.shields.io/badge/Terraform-1.13+-623CE4?style=for-the-badge&logo=terraform)
![Proxmox](https://img.shields.io/badge/Proxmox-VE-E57000?style=for-the-badge&logo=proxmox)
![Debian](https://img.shields.io/badge/Debian-13-A81D33?style=for-the-badge&logo=debian)
![Docker](https://img.shields.io/badge/Docker-Ready-2496ED?style=for-the-badge&logo=docker)
![Python](https://img.shields.io/badge/Python-3.13-3776AB?style=for-the-badge&logo=python)
![FastAPI](https://img.shields.io/badge/FastAPI-0.116-009688?style=for-the-badge&logo=fastapi)
![Grafana](https://img.shields.io/badge/Grafana-Ready-F46800?style=for-the-badge&logo=grafana)
![Prometheus](https://img.shields.io/badge/Prometheus-Ready-E6522C?style=for-the-badge&logo=prometheus)
![License](https://img.shields.io/github/license/USERNAME/InfraLab?style=for-the-badge)

</p>

---

## 📖 Overview

**InfraLab** is a personal Infrastructure as Code (IaC) laboratory designed to build, deploy and manage a complete virtual infrastructure using modern DevOps tools.

The project demonstrates a production-inspired workflow based on:

- Infrastructure as Code (Terraform)
- Proxmox Virtual Environment
- Debian Cloud Images
- Cloud-Init
- Docker
- Python / FastAPI
- Observability with Prometheus & Grafana

The objective is to reproduce the lifecycle of a modern infrastructure from provisioning to application deployment.

---

# 🏗 Architecture

```text
                Internet
                    │
            ┌──────────────┐
            │   Proxmox VE │
            └──────┬───────┘
                   │
          Debian Golden Template
                   │
          Terraform Provisioning
                   │
      ┌────────────┴────────────┐
      │                         │
   Docker Host             Monitoring
      │                         │
 FastAPI Apps      Prometheus / Grafana
```

---

# ✨ Features

- ✅ Automated Debian Cloud Template
- ✅ Terraform VM provisioning
- ✅ Cloud-Init integration
- ✅ SSH Key Injection
- ✅ Proxmox API Token Authentication
- ✅ Docker deployment
- ✅ FastAPI services
- ✅ Monitoring stack
- ✅ Infrastructure reproducibility

---

# 📂 Project Structure

```text
InfraLab/
│
├── app/
├── docker/
├── docs/
├── monitoring/
│
├── scripts/
│   ├── build-debian-template.sh
│   └── ...
│
├── terraform/
│   ├── modules/
│   └── proxmox/
│
├── Makefile
├── README.md
└── LICENSE
```

---

# ⚙️ Tech Stack

| Category | Technologies |
|-----------|--------------|
| Hypervisor | Proxmox VE |
| IaC | Terraform |
| OS | Debian 13 Cloud |
| Virtualization | QEMU / KVM |
| Containers | Docker |
| Backend | Python, FastAPI |
| Monitoring | Prometheus, Grafana, Loki |
| Automation | Bash |
| Version Control | Git / GitHub |

---

# 🚀 Quick Start

Clone the repository

```bash
git clone https://github.com/YOUR_USERNAME/InfraLab.git
cd InfraLab
```

Build the Debian template

```bash
make template
```

Provision infrastructure

```bash
make apply
```

Destroy infrastructure

```bash
make destroy
```

---

# 🎯 Objectives

This project focuses on learning and demonstrating practical skills in:

- Infrastructure as Code
- DevOps Automation
- Linux Administration
- Cloud-Init
- Virtualization
- Networking
- Observability
- API-driven Infrastructure

---

# 📈 Roadmap

- [x] Proxmox API integration
- [x] Terraform provider
- [x] Debian Cloud Template
- [x] Cloud-Init
- [x] SSH automation
- [x] Docker deployment
- [ ] Kubernetes (k3s)
- [ ] GitHub Actions CI
- [ ] Ansible integration
- [ ] Multi-node infrastructure
- [ ] High Availability

---

# 📜 License

MIT License

---

<p align="center">

Built with ❤️ using Proxmox, Terraform and Debian.

</p>
