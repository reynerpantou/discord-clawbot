# Docker Notes

OpenClaw uses Docker as a sandbox backend.

For Windows:

```text
Windows -> WSL2 Ubuntu -> Docker Desktop Engine
```

Verify from WSL:

```bash
docker run hello-world
docker images
```

Expected sandbox image:

```text
openclaw-sandbox:bookworm-slim
```
