# Contributing to InfraLab

First of all, thank you for considering contributing to InfraLab.

InfraLab aims to become a production-ready Infrastructure as Code framework for Proxmox.

Every contribution should improve the project in terms of:

- Simplicity
- Reliability
- Security
- Documentation
- Maintainability

---

# Project Philosophy

InfraLab follows a few simple principles.

## Infrastructure as Code First

If an infrastructure component can be managed through code, it should never require manual configuration.

## One Responsibility

Every component has a single responsibility.

Examples:

- Terraform provisions infrastructure.
- Cloud-Init initializes virtual machines.
- Ansible configures systems.
- Docker runs services.

## Documentation is part of the code

Every significant change must include the required documentation.

Code without documentation is considered incomplete.

---

# Development Workflow

1. Create a feature branch.

Example:

```bash
git checkout -b feature/my-feature
```

2. Commit frequently using Conventional Commits.

Example:

```text
feat(terraform): add vm module

fix(api): validate deployment request

docs(readme): update installation guide
```

3. Open a Pull Request.

4. Wait for review before merging.

---

# Repository Structure

```text
app/            REST API and CLI
ansible/        Host provisioning
docker/         Docker services
docs/           Documentation
monitoring/     Observability
scripts/        Utility scripts
terraform/      Infrastructure as Code
tests/          Test suites
```

---

# Terraform Guidelines

Terraform modules must:

- remain generic
- contain one responsibility
- never include business logic

Business logic belongs to stacks.

---

# Coding Standards

The project follows:

- EditorConfig
- Conventional Commits
- Semantic Versioning
- Infrastructure as Code
- Security by Design

---

# Pull Requests

Every Pull Request should:

- compile
- pass validation
- include documentation when necessary
- remain focused on one feature

Large Pull Requests are discouraged.

---

# Reporting Issues

When reporting an issue, please include:

- InfraLab version
- Terraform version
- Proxmox version
- Linux distribution
- Steps to reproduce
- Expected behavior
- Actual behavior

---

# Questions

Before opening an issue, please check:

- README
- Documentation
- Existing issues

Thank you for helping improve InfraLab.
