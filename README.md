# OpenClaw Telegram AI Assistant

Local AI assistant deployment connecting Telegram to an OpenClaw gateway and a locally hosted Qwen model through Ollama.

The project focuses on running the agent stack locally on Windows, handling Telegram connectivity through application-level proxy routing and keeping model inference on-device.

## Architecture

```text
Telegram → Privoxy → Tor → OpenClaw Gateway → Ollama → Qwen 3.5 4B
```

The OpenClaw Gateway and LLM inference run locally. Telegram traffic is routed through an application-level proxy, so the host does not require a system-wide VPN.

## Engineering focus

- local LLM inference with Ollama
- Telegram bot integration
- OpenClaw gateway deployment
- application-level proxy routing
- custom agent identity and behavior
- reproducible Windows startup flow
- deployment troubleshooting and connectivity debugging

## Stack

`OpenClaw` · `Node.js` · `Ollama` · `Qwen 3.5 4B` · `Telegram Bot API` · `Privoxy` · `Tor`

## Repository layout

- `start-gateway.cmd` — launches the local OpenClaw gateway with proxy environment variables
- `SOUL.md` — system/character behavior used by the assistant
- `OpenClaw_Test_Assignment_OnePager_RU.pdf` — compact Russian-language project overview

## Deployment work

During deployment I resolved:

- failed automatic Node.js installation
- Windows gateway startup issues
- Telegram connectivity restrictions
- SOCKS5/HTTP proxy routing

No credentials or bot tokens are stored in this repository.

## Context

The implementation was originally built as a technical assignment and retained as a compact example of local agent deployment and Telegram integration.
