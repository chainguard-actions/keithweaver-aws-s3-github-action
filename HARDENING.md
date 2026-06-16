<!-- markdownlint-disable -->

# Hardening Report: keithweaver--aws-s3-github-action/v0.1.1

> This file was generated automatically by the hardening agent.

**Policy SHA:** `d636be7e43ef829af6e853da6b3c7566db9f72fe`

**Test Policy SHA:** `843adf9e4b8f85d0c08b27b9d0b09dd094b54702`

**Harden Agent Version:** `1`

Action **keithweaver--aws-s3-github-action/v0.1.1** was hardened automatically. 1 finding(s) were identified and resolved across 1 iteration(s).

## Findings Fixed

### unpinned-uses (severity: high)

The Dockerfile uses `FROM amazon/aws-cli:latest`, which references a mutable `:latest` tag instead of an immutable SHA digest. This is equivalent to an unpinned `runs.image:` reference in a Docker action and exposes the action to supply-chain attacks — the upstream image can be silently replaced with a malicious version at any time. The image reference should be pinned to a specific SHA digest, e.g. `FROM amazon/aws-cli@sha256:<64-hex-char-digest>`.

Locations:

- `Dockerfile:3`

## Iteration Notes

### Iteration 1

**Fixes applied:** unpinned-uses

**Notes:**

Pinned the Dockerfile base image from `amazon/aws-cli:latest` to `amazon/aws-cli@sha256:e4e5fb512155339dd992a4ce84d870ef48c9b96f3757d4993b8e5a80b7107889 # latest`. The SHA256 digest was resolved via the Docker Registry HTTP API v2, ensuring the image reference is now immutable and protected against supply-chain attacks.

