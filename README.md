# InfraLab

<p align="center">

![CI](https://img.shields.io/github/actions/workflow/status/ThomaMart/infralab/ci.yml?branch=main&style=for-the-badge&label=CI)

![Terraform](https://img.shields.io/badge/Terraform-1.15+-623CE4?style=for-the-badge&logo=terraform)

![Proxmox](https://img.shields.io/badge/Proxmox-VE-E57000?style=for-the-badge&logo=proxmox)

![Debian](https://img.shields.io/badge/Debian-13-A81D33?style=for-the-badge&logo=debian)

![Docker](https://img.shields.io/badge/Docker-Ready-2496ED?style=for-the-badge&logo=docker)

![Python](https://img.shields.io/badge/Python-3.13-3776AB?style=for-the-badge&logo=python)

![FastAPI](https://img.shields.io/badge/FastAPI-Ready-009688?style=for-the-badge&logo=fastapi)

![License](https://img.shields.io/github/license/ThomaMart/infralab?style=for-the-badge)

</p>

InfraLab is an open-source Infrastructure as Code framework built around Proxmox Virtual Environment.

Its objective is to provide a reproducible platform to deploy, manage and evolve complete virtual infrastructures using modern DevOps practices.

The project is designed as:

* an Infrastructure as Code framework;
* a reusable Proxmox deployment platform;
* a technical portfolio;
* a foundation for future infrastructure projects.

## Features

* Terraform modules
* Reusable infrastructure stacks
* Environment separation (dev, home, prod)
* Debian 13 Golden Template
* Cloud-Init provisioning
* Proxmox API integration
* SSH key injection
* Docker-ready virtual machines
* Ansible provisioning pipeline
* Monitoring stack (Prometheus, Grafana, Loki)
* FastAPI management API (planned)

## Architecture

```text
Developer PC
        │
        ▼
     GitHub
        │
        ▼
 GitHub Actions
        │
        ▼
Terraform
        │
        ▼
 Proxmox VE
        │
        ▼
 Virtual Machines
        │
        ├── Docker Hosts
        ├── Monitoring
        ├── Applications
        └── Future Kubernetes
```

## Repository Structure

```text
.
├── ansible/
├── app/
├── docker/
├── docs/
├── env/
├── monitoring/
├── scripts/
├── terraform/
│   ├── environments/
│   ├── modules/
│   └── stacks/
├── tests/
├── Makefile
└── README.md
```

## Terraform Layout

```text
terraform/
├── environments/
│   ├── dev/
│   ├── home/
│   └── prod/
│
├── modules/
│   ├── vm/
│   ├── network/
│   ├── docker-host/
│   ├── monitoring/
│   └── ...
│
└── stacks/
    ├── lab/
    ├── docker/
    └── monitoring/
```

## Technology Stack

| Category         | Technology                |
| ---------------- | ------------------------- |
| Hypervisor       | Proxmox VE                |
| IaC              | Terraform                 |
| Provisioning     | Cloud-Init + Ansible      |
| Containers       | Docker                    |
| Backend          | FastAPI                   |
| Monitoring       | Prometheus, Grafana, Loki |
| Operating System | Debian 13                 |
| Version Control  | Git + GitHub              |

## Getting Started

Clone the repository.

```bash
git clone https://github.com/ThomaMart/infralab.git

cd infralab
```

Initialize Terraform.

```bash
cd terraform/environments/home

terraform init
```

Validate the infrastructure.

```bash
terraform validate

terraform plan
```

Or simply use the Makefile.

```bash
make fmt

make validate

make plan
```

## Documentation

Project documentation is available under:

```text
docs/
├── adr/
├── architecture/
├── guides/
├── roadmap/
└── standards/
```

## Roadmap

* [x] Proxmox API integration
* [x] Terraform provider
* [x] Debian Cloud Template
* [x] Cloud-Init
* [x] SSH automation
* [x] Docker deployment
* [x] Kubernetes (k3s)
* [x] GitHub Actions CI
* [x] Ansible integration
* [ ] Multi-node infrastructure
* [ ] High Availability

## Contributing

Please read **CONTRIBUTING.md** before opening an issue or a pull request.

## Security

Please report vulnerabilities according to **SECURITY.md**.

## License

Distributed under the MIT License.
