<div align="center">

# Lattice Homebrew Tap

### Install [Lattice Runtime](https://github.com/latticeHQ/latticeRuntime) on macOS and Linux

[![License: MIT](https://img.shields.io/badge/License-MIT-blue.svg?style=flat-square)](./LICENSE)

**One command to run the institutional AI coordination layer on your hardware.**

[Lattice Runtime](https://github.com/latticeHQ/latticeRuntime) · [Lattice Workbench](https://github.com/latticeHQ/latticeWorkbench) · [Discussions](https://github.com/latticeHQ/latticeRuntime/discussions)

</div>

---

## Install

```bash
# Runtime CLI (coordination layer — identity, authorization, audit, budget)
brew install latticehq/lattice/lattice

# Workbench desktop app (Reference Engineering Stack) — macOS only
brew install --cask latticehq/lattice/lattice-workbench
```

## Upgrade

```bash
brew upgrade lattice
brew upgrade --cask lattice-workbench
```

## Quick Start

```bash
lattice version            # Verify installation
lattice server             # Start Runtime — agents can connect immediately
```

Your coordination layer is running. Agents anywhere on the internet can connect to it through an automatically provisioned WireGuard tunnel. Your data stays on your machine.

Then open Lattice Workbench from your Applications folder to start creating agents.

## What You Get

| Formula | What It Does |
|---------|-------------|
| `lattice` | The Lattice Runtime CLI — run the coordination layer, manage agents, deploy stacks, SSH into agents |
| `lattice-workbench` | The Lattice Workbench desktop app — multi-model agent workspace with git worktree isolation |

## Other Installation Methods

If you're not using Homebrew:

```bash
# Binary (Linux, macOS, Windows — amd64, arm64)
curl -fsSL https://install.latticeruntime.com | sh

# Docker
docker compose up -d

# Kubernetes
helm install lattice lattice/lattice --namespace lattice --create-namespace
```

## Ecosystem

| Component | Role | Repository |
|-----------|------|------------|
| [**Enterprise**](https://github.com/latticeHQ/latticeEnterprise) | Enterprise administration and governance | Coming soon |
| **Homebrew** (this repo) | One-line install on macOS and Linux | You are here |
| [**Inference**](https://github.com/latticeHQ/latticeInference) | Local AI serving — MLX on Apple Silicon, zero-config clustering | [latticeInference](https://github.com/latticeHQ/latticeInference) |
| [**Operator**](https://github.com/latticeHQ/latticeOperator) | Self-hosted deployment management for Lattice infrastructure | [latticeOperator](https://github.com/latticeHQ/latticeOperator) |
| [**Public**](https://github.com/latticeHQ/lattice) | Website + binary releases | [lattice](https://github.com/latticeHQ/lattice) |
| [**Registry**](https://github.com/latticeHQ/latticeRegistry) | Community ecosystem — Terraform modules, templates, stacks | [latticeRegistry](https://github.com/latticeHQ/latticeRegistry) |
| [**Runtime**](https://github.com/latticeHQ/latticeRuntime) | Coordination layer — identity, authorization, audit, budget | [latticeRuntime](https://github.com/latticeHQ/latticeRuntime) |
| [**Terraform Provider**](https://github.com/latticeHQ/terraform-provider-lattice) | Infrastructure as code for Lattice deployments | [terraform-provider-lattice](https://github.com/latticeHQ/terraform-provider-lattice) |
| [**Toolbox**](https://github.com/latticeHQ/latticeToolbox) | macOS app manager for Lattice products | [latticeToolbox](https://github.com/latticeHQ/latticeToolbox) |
| [**Workbench**](https://github.com/latticeHQ/latticeWorkbench) | Reference Engineering Stack — multi-model agent workspace | [latticeWorkbench](https://github.com/latticeHQ/latticeWorkbench) |

## Links

- [Website](https://latticeruntime.com)
- [GitHub](https://github.com/latticeHQ)
- [GitHub Discussions](https://github.com/latticeHQ/latticeRuntime/discussions)

---

<div align="center">

**[latticeruntime.com](https://latticeruntime.com)** — The open-source coordination layer for institutional AI.

</div>
