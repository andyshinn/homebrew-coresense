# homebrew-coresense

Homebrew tap for [CoreSense](https://github.com/andyshinn/coresense), an
experimental desktop MeshCore client.

## Install

```sh
brew tap andyshinn/coresense
brew install --cask coresense
```

For development / prerelease builds:

```sh
brew install --cask coresense@dev
```

## Casks

- `coresense` — stable channel
- `coresense@dev` — development / prerelease channel

The `version` and `sha256` in each cask are bumped automatically when a CoreSense
release is published. See the release automation in
[andyshinn/coresense](https://github.com/andyshinn/coresense).
