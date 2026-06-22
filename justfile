[private]
_default:
    @just --list

# Run pre-commit on all files
lint:
    pre-commit run --all --show-diff-on-failure --color always

# Install knobs
install PREFIX="~/.local/bin":
    mkdir --parent {{PREFIX}}
    cp knobs {{PREFIX}}

# Draft a GitHub release
release:
    #!/usr/bin/env bash
    set -euo pipefail
    version="$(./knobs version)"
    git fetch origin --prune-tags
    gh release create "v${version}" --draft --generate-notes knobs
