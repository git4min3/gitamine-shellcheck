# Shellcheck Gitamine Plugin

## Requirements

* php >= 7.1
* gitamine
* shellcheck
* Linux/Mac

## Installation

```bash
gitamine install git4min3/gitamine-shellcheck
```

## Configuration

```yaml
# gitamine.yaml
gitamine:
  pre-commit:
    shellcheck: ~    
```

```yaml
# gitamine.yaml
gitamine:
  pre-commit:
    shellcheck:
      bin: bin/shellcheck               #default shellcheck    
```
