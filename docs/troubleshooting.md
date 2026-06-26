# Troubleshooting

## Discord connected but bot does not reply

Check:

```bash
openclaw logs --follow --limit 50
openclaw channels status --probe
openclaw doctor
```

## Missing sandbox image

Error:

```text
Sandbox image not found: openclaw-sandbox:bookworm-slim
```

Fix by building the sandbox image according to OpenClaw docs or repo script.

## Missing OpenAI auth

Error:

```text
No API key found for provider openai
```

Fix:

```bash
openclaw models auth login --provider openai
openclaw gateway restart
```

## Discord access not configured

Approve pairing or configure guild/role allowlist.
