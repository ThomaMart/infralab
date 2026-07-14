# Security Policy

Thank you for helping keep InfraLab secure.

The security of this project is taken seriously. If you discover a vulnerability, please report it responsibly.

---

# Supported Versions

The following table describes the current support policy.

| Version | Supported |
|----------|-----------|
| main     | ✅ |
| Previous releases | ❌ |

Only the latest development version is currently supported.

As the project matures, a version support policy will be introduced.

---

# Reporting a Vulnerability

Please **do not open a public GitHub Issue** for security vulnerabilities.

Instead, report vulnerabilities privately.

Include as much information as possible:

- affected component
- InfraLab version
- Terraform version
- Proxmox VE version
- operating system
- steps to reproduce
- proof of concept (if applicable)
- potential impact

---

# Response Process

Every report will follow this process.

1. Acknowledge receipt.
2. Reproduce the issue.
3. Assess severity.
4. Develop a fix.
5. Publish the fix.
6. Credit the reporter (if desired).

---

# Scope

Security reports may include issues involving:

- Terraform modules
- Infrastructure provisioning
- FastAPI
- Docker
- Ansible
- GitHub Actions
- Secrets management
- Authentication
- Authorization
- Supply chain security

---

# Out of Scope

The following are generally considered out of scope:

- Vulnerabilities in unsupported third-party software.
- Issues requiring physical access.
- Local environment misconfiguration.
- Social engineering.

---

# Security Principles

InfraLab follows a "Security by Design" approach.

Core principles include:

- Least Privilege
- Infrastructure as Code
- Secure Defaults
- Secrets are never committed
- Principle of Single Responsibility
- Dependency updates
- Continuous security scanning

---

# Disclosure Policy

Responsible disclosure is appreciated.

Please allow time for a fix before publicly disclosing a vulnerability.

Thank you for helping improve the security of InfraLab.
