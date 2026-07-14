# Contributing to InfraLab

Thank you for your interest in contributing to InfraLab.

InfraLab is an open-source Infrastructure as Code framework built around Proxmox Virtual Environment. Every contribution should improve the project's quality, reliability and maintainability.

## Project Principles

InfraLab is built around a few core principles.

* Infrastructure as Code
* Simplicity
* Security by Design
* Reproducibility
* Documentation
* Modularity

## Architecture Philosophy

Each tool has a single responsibility.

| Component  | Responsibility              |
| ---------- | --------------------------- |
| Terraform  | Provision infrastructure    |
| Cloud-Init | Initialize virtual machines |
| Ansible    | Configure operating systems |
| Docker     | Run services                |
| FastAPI    | Provide the management API  |

Business logic belongs to Terraform stacks, while Terraform modules remain reusable building blocks.

## Development Workflow

Create a dedicated branch.

```bash
git checkout -b feature/my-feature
```

Use Conventional Commits.

Examples:

```text
feat(terraform): add vm module

fix(ansible): improve inventory

docs(readme): update quick start
```

Before opening a Pull Request:

1. Run formatting tools.
2. Validate Terraform.
3. Run pre-commit.
4. Update documentation if required.

Open a Pull Request only after all checks succeed.

## Repository Structure

```text
ansible/       Configuration management
app/           FastAPI application
docker/        Container services
docs/          Documentation
env/           Environment examples
monitoring/    Observability
scripts/       Automation scripts
terraform/     Infrastructure as Code
tests/         Test suites
```

## Coding Standards

InfraLab follows:

* EditorConfig
* Conventional Commits
* Semantic Versioning
* Infrastructure as Code
* Security by Design

All code must:

* be production-ready;
* remain modular;
* avoid duplication;
* include documentation when appropriate.

## Terraform Guidelines

Terraform modules should:

* remain reusable;
* expose only generic variables;
* avoid business logic;
* declare providers explicitly when required.

Stacks assemble modules to build complete infrastructures.

## Pull Requests

Each Pull Request should:

* focus on a single feature or fix;
* pass all CI checks;
* include documentation updates when applicable;
* keep changes as small and reviewable as possible.

## Reporting Issues

When opening an issue, please include:

* InfraLab version
* Terraform version
* Proxmox VE version
* Operating system
* Steps to reproduce
* Expected behavior
* Actual behavior

## Questions

Before opening a new issue, please check:

* README.md
* Project documentation
* Existing GitHub issues

Thank you for helping improve InfraLab.
