<!-- markdownlint-disable -->

# Hardening Report: keithweaver--aws-s3-github-action/v0.1.2

> This file was generated automatically by the hardening agent.

**Policy SHA:** `d636be7e43ef829af6e853da6b3c7566db9f72fe`

**Test Policy SHA:** `843adf9e4b8f85d0c08b27b9d0b09dd094b54702`

**Harden Agent Version:** `2`

Action **keithweaver--aws-s3-github-action/v0.1.2** was hardened automatically. 0 finding(s) were identified and resolved across 1 iteration(s).

## Iteration Notes

### Iteration 1

**Fixes applied:** unpinned-uses

**Notes:**

Pinned the Dockerfile base image from `amazon/aws-cli:latest` (mutable tag) to `amazon/aws-cli:latest@sha256:cd11f6e909d42f066a03e15f072853fcc19f033e343cb83b2d553e2082cbb5a7` (immutable digest). The tag is retained for readability while the digest ensures the exact image layer is used regardless of future tag updates.

