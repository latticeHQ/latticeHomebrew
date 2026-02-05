# Lattice Homebrew Tap

### Install [Lattice — Agent Headquarters](https://latticeruntime.com) on macOS and Linux.

The open-source runtime for AI agents. Identity. Authorization. Audit. Inference. Self-hosted. Runs anywhere.

## Installation

```bash
brew tap latticeHQ/lattice
brew install latticehq/lattice/lattice
```

Or install directly:

```bash
brew install latticehq/lattice/lattice
```

## Upgrade

```bash
brew upgrade lattice
```

## Get Started

```bash

# Deploy an agent with identity, permissions, and audit
lattice deploy my-agent --template docker --model llama-3.1-8b

# Serve local models (Apple Silicon / NVIDIA)
lattice inference serve --model mlx-community/Llama-3.2-3B-Instruct-4bit

# Open the Workbench
lattice workbench
```

## The Lattice Ecosystem

Lattice is **Agent Headquarters** — the open-source runtime where AI agents get their identity, their permissions, their compute, and their orders.

| Component | What It Does |
|-----------|-------------|
| [**Runtime**](https://github.com/latticeHQ/lattice) | Enforcement kernel — identity, authorization, audit, deployment constraints |
| [**Inference**](https://github.com/latticeHQ/lattice-inference) | Local LLM serving — MLX (Apple Silicon), CUDA (NVIDIA), zero-config clustering |
| [**Workbench**](https://github.com/latticeHQ/lattice-workbench) | Agent IDE & operations console — multi-model chat, monitoring |
| [**Registry**](https://github.com/latticeHQ/lattice-registry) | Community ecosystem — templates, modules, presets |

All open source. Self-hosted. Vendor-neutral.

## Links

- [Website](https://latticeruntime.com)
- [GitHub](https://github.com/latticeHQ/lattice)
- [Documentation](https://docs.latticeruntime.com)

---

<div align="center">

**Your agents. Your models. Your rules. Your infrastructure.**

</div>
