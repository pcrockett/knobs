[private]
_default:
    @just --list

# Run pre-commit on all files
lint:
    pre-commit run --all --show-diff-on-failure --color always

# Install knobs
install PREFIX="~/.local/bin":
    cp knobs {{PREFIX}}
