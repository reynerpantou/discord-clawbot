# AI Council

AI Council is a Discord AI assistant configuration project for running multiple LLMs through OpenClaw.

This repository is intended to be the source of truth for:

- Bot identity and behavior
- Language and style rules
- Model-specific prompts
- Discord access policy
- Routing strategy
- Community rules
- Owner/admin notes
- Deployment notes

## Goals

- One Discord bot, multiple LLMs.
- Clear model identity: GPT, Claude, Gemini, Council, and future local models.
- Safe by default: role-based access, mention gating, sandboxing, and least privilege.
- Natural language behavior: Indonesian, English, Traditional Chinese, and mixed language style matching.
- Reusable prompt architecture that can survive future migration away from OpenClaw.

## Recommended Discord Layout

```text
🧙 AI Council
├── #ask-the-oracle
├── #gpt-workshop
├── #claude-chamber
├── #gemini-temple
├── #council-debate
└── #bot-admin
```

## Suggested Roles

```text
AI Owner      Full admin control
AI Moderator  Manage access and basic bot operations
AI Access     Can use the bot
Everyone      No direct bot access unless allowed
```

## Repository Structure

```text
prompts/     Core behavior and model prompts
memory/      Server and owner context
routing/     Model/channel/permission routing docs
discord/     Discord-specific setup and usage
configs/     OpenClaw patch/config templates
skills/      Custom skill docs and future SKILL.md files
docs/        Architecture, deployment, troubleshooting
scripts/     Deploy/backup/update helpers
examples/    Example conversations and workflows
```

## Important

Do not commit real API keys, Discord tokens, OAuth secrets, cookies, or private credentials.
