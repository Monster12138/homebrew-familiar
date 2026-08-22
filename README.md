# Familiar Homebrew Tap

This tap provides two installation paths:

- `familiar-cli`: the server and headless CLI Formula. It builds from the
  corresponding Familiar Git tag and does not install a desktop runtime.
- `familiar`: the macOS desktop Cask. It installs `Familiar.app` and exposes
  the same-version `familiar-cli` embedded in the application bundle.

## Install

```bash
brew install Monster12138/familiar/familiar-cli
brew install --cask Monster12138/familiar/familiar
```

The Cask currently tracks the v2.0.1 macOS DMGs. Future releases should update
the version and SHA-256 values in both package definitions together. The
desktop artifact must be Developer ID signed and notarized before it is
recommended for Gatekeeper-protected installations.

## Development

Run the standard Homebrew checks before pushing updates:

```bash
brew audit --new --strict --formula Monster12138/familiar/familiar-cli
brew audit --new --strict --cask Monster12138/familiar/familiar
brew test Monster12138/familiar/familiar-cli
```

See [Homebrew documentation](https://docs.brew.sh) for tap maintenance.
