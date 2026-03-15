# Contributing to Lattice Homebrew

## Prerequisites

- **Homebrew** installed on macOS or Linux
- **Ruby** (ships with macOS; used by Homebrew for formula definitions)
- **Git**

## Setup

```bash
# Tap the repository locally for testing
brew tap latticeHQ/lattice https://github.com/latticeHQ/latticeHomebrew.git
```

## Development

### Testing a Formula Change

```bash
# Audit the formula for issues
brew audit --strict Formula/lattice.rb

# Test the formula installs correctly
brew install --build-from-source Formula/lattice.rb

# Run the built-in test block
brew test lattice
```

### Updating a Formula Version

1. Update the version number in `Formula/lattice.rb`
2. Update the SHA256 checksums for each platform binary
3. Update the download URLs to point to the new release
4. Run `brew audit --strict` to validate

## Branch Naming

- `feat/<description>` — new formulas or casks
- `fix/<description>` — formula fixes
- `docs/<description>` — documentation changes

## Commit Messages

Follow [Conventional Commits](https://www.conventionalcommits.org/):

```
feat(formula): add new formula
fix(formula): update checksums for v0.12.0
docs: update installation instructions
```

## Pull Requests

1. Fork the repo and create a feature branch from `develop`
2. Test your formula changes locally with `brew audit` and `brew test`
3. Keep PRs focused — one formula change per PR
4. Include the SHA256 checksums for all platform binaries

## Structure

```
Formula/          # Homebrew formula definitions (.rb)
Casks/            # macOS Cask definitions (GUI apps)
scripts/          # Helper scripts
```

## License

By contributing, you agree that your contributions will be licensed under the [MIT License](LICENSE).
