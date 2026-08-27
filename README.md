# OpenClaw Telegram AI Assistant

Test assignment: local OpenClaw deployment with Telegram integration.

## Stack

- OpenClaw
- Node.js
- Ollama
- Qwen 3.5 4B
- Telegram Bot API
- Privoxy
- Tor

## Architecture

Telegram → Privoxy → Tor → OpenClaw Gateway → Ollama → Qwen 3.5 4B

The OpenClaw Gateway and LLM inference run locally on Windows.
Telegram traffic is routed through an application-level proxy, so no
system-wide VPN is required on the host machine.

## Features

- Local LLM inference
- Telegram bot integration
- Custom SOUL.md / IDENTITY.md
- Reproducible Windows gateway launcher
- Works without system-wide VPN

## Troubleshooting

During deployment I resolved:
- failed automatic Node.js installation;
- Windows Gateway startup issues;
- Telegram connectivity restrictions;
- SOCKS5/HTTP proxy routing.

No credentials or bot tokens are stored in this repository.
