# PAGERDEV — Self-hosted Setup

## Files needed (all in the same folder)
```
Dockerfile
docker-compose.yml
devops_odyssey.html
```

## Deploy

```bash
docker compose up -d
```

Game runs on port **8765**. In your Cloudflare tunnel dashboard, point a public hostname at:
```
http://YOUR_QNAP_LAN_IP:8765
```

## Update the game

Replace `devops_odyssey.html` then:
```bash
docker compose up -d --build
```

