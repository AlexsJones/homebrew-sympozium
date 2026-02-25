<p align="center">
  <img src="https://raw.githubusercontent.com/AlexsJones/kubeclaw/main/header.png" alt="kubeclaw" width="600px">
</p>

# Homebrew Tap for KubeClaw

Official [Homebrew](https://brew.sh) tap for [KubeClaw](https://github.com/AlexsJones/kubeclaw) —
the Kubernetes-native AI agent orchestration platform.

## Install

```sh
brew tap AlexsJones/kubeclaw
brew install kubeclaw
```

## Upgrade

```sh
brew update
brew upgrade kubeclaw
```

## Verify

```sh
kubeclaw version
```

## Deploy to your cluster

```sh
kubeclaw install
```

See the [Getting Started guide](https://github.com/AlexsJones/kubeclaw/blob/main/docs/getting-started.md)
for a full walkthrough — onboarding, the TUI, and all CLI commands.

## Manual install (without tapping)

```sh
brew install AlexsJones/kubeclaw/kubeclaw
```

---

This formula is updated automatically by the
[KubeClaw release workflow](https://github.com/AlexsJones/kubeclaw/blob/main/.github/workflows/release.yaml)
on every new release.
