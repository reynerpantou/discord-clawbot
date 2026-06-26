# Architecture

```text
Discord
  |
  v
OpenClaw Gateway
  |
  +-- GPT
  +-- Claude
  +-- Gemini
  +-- Local models
  |
  v
Docker Sandbox
```

## Principles

- One Discord bot
- Multiple model routes
- One shared base profile
- Per-model overrides
- Role-based access
- Sandbox by default
