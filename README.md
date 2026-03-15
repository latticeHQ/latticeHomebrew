# Lattice Homebrew Tap

### Install [Lattice Runtime](https://github.com/latticeHQ/latticeRuntime) on macOS and Linux.

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
lattice server --tunnel    # Start Runtime with public tunnel
```

Then open Lattice Workbench from your Applications folder.

## Ecosystem

| Component | Role | Repository |
|-----------|------|------------|
| **Homebrew** (this repo) | One-line install on macOS and Linux | You are here |
| [**Inference**](https://github.com/latticeHQ/latticeInference) | Local AI serving — MLX on Apple Silicon, zero-config clustering | [latticeInference](https://github.com/latticeHQ/latticeInference) |
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
