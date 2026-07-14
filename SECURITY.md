# Security Policy

Thank you for helping keep InfraLab secure.

Security is a core principle of InfraLab. If you discover a vulnerability, please report it responsibly so it can be investigated and fixed before public disclosure.

## Supported Versions

The current support policy is as follows.

| Version           | Supported |
| ----------------- | :-------: |
| main              |     ✅     |
| Previous releases |     ❌     |

At this stage of the project, only the latest development branch is actively maintained.

A long-term support policy will be introduced once stable releases become available.

## Reporting a Vulnerability

Please **do not** report security vulnerabilities through public GitHub issues.

Instead, report them privately and include as much information as possible:

* affected component;
* InfraLab version;
* Terraform version;
* Proxmox VE version;
* operating system;
* steps to reproduce;
* proof of concept (if applicable);
* potential impact.

## Response Process

Every vulnerability report follows the same process.

1. Acknowledge the report.
2. Reproduce the issue.
3. Assess its severity.
4. Develop and validate a fix.
5. Publish the fix.
6. Credit the reporter (if desired).

## Scope

Security reports may concern:

* Terraform modules;
* infrastructure provisioning;
* FastAPI services;
* Docker images and containers;
* Ansible playbooks;
* GitHub Actions workflows;
* secrets management;
* authentication;
* authorization;
* software supply chain.

## Out of Scope

The following issues are generally considered outside the scope of this policy:

* vulnerabilities in unsupported third-party software;
* issues requiring physical access;
* local environment misconfiguration;
* social engineering attacks.

## Security Principles

InfraLab follows a **Security by Design** approach.

The project is built around the following principles:

* Least Privilege;
* Infrastructure as Code;
* Secure Defaults;
* Secrets are never committed to the repository;
* Single Responsibility Principle;
* Dependency management;
* Continuous security scanning.

## Disclosure Policy

Responsible disclosure is appreciated.

Please allow sufficient time for a fix before publicly disclosing any security vulnerability.

Thank you for helping improve the security of InfraLab.
