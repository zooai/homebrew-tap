# homebrew-tap

Canonical Homebrew tap for **Zoo Labs Foundation** native components —
the C/C++/CUDA/Metal pieces consumed by zooai Go/Rust modules via cgo
and zooai CLI tools. Installing through this tap (instead of pointing
build systems at an in-tree directory) keeps every developer's link
paths identical and gives the linker exactly one copy of each library
on `LIBRARY_PATH`.

## Install

```bash
brew tap zooai/tap
brew install zoo-cli          # Zoo CLI for DeAI / DeSci
brew install zoo-models       # Pre-built native model loaders
```

Apple-Silicon paths: `/opt/homebrew/{bin,lib,include,lib/pkgconfig}`.
Intel paths: `/usr/local/{bin,lib,include,lib/pkgconfig}`.

## Build from source

Each formula builds from a tagged source tarball published at the
corresponding GitHub release. To consume an in-tree dev build, use
`brew install --HEAD`.

## Available formulas

| formula | source | notes |
|---|---|---|
| zoo-cli    | github.com/zooai/cli      | Zoo CLI |
| zoo-models | github.com/zooai/models   | Native model loaders |

(Sister taps: `luxfi/tap`, `hanzoai/tap`.)
