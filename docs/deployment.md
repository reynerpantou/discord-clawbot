# Deployment

## Apply OpenClaw Config

```bash
openclaw config patch --file configs/openclaw.patch.json5
openclaw config patch --file configs/discord.patch.json5
openclaw config validate
openclaw gateway restart
```

## Verify

```bash
openclaw channels status --probe
openclaw doctor
docker images | grep openclaw-sandbox
```

## Test Discord

```text
@Clawbot hello
```
