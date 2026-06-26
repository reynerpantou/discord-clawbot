# Sandbox Policy

Recommended:

```json5
{
  agents: {
    defaults: {
      sandbox: {
        mode: "all",
        backend: "docker",
        workspaceAccess: "none",
        scope: "session"
      }
    }
  }
}
```

## Notes

- `mode: all` forces tool execution into sandbox.
- `workspaceAccess: none` is safest.
- Use `ro` only when tools need read access.
- Avoid `rw` unless necessary.
- Do not mount secrets into the sandbox.
