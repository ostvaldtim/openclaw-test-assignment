@echo off
set "HTTP_PROXY=http://127.0.0.1:8118"
set "HTTPS_PROXY=http://127.0.0.1:8118"
set "NO_PROXY=127.0.0.1,localhost,::1"

call openclaw gateway --port 18789 --verbose

pause