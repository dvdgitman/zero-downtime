# 🖥️ Zero Downtime — DevOps Learning RPG

> A browser-based RPG where you explore server rooms, solve real DevOps incidents, and level up your cloud engineering knowledge.

![Zero Downtime](https://img.shields.io/badge/version-1.0.0-00e5a0?style=flat-square) ![Docker](https://img.shields.io/badge/docker-davidgman%2Fzero--downtime-blue?style=flat-square&logo=docker) ![License](https://img.shields.io/badge/license-MIT-white?style=flat-square)

---

## 🎮 What is this?

Zero Downtime is a pixel-art RPG built entirely in a single HTML file. You play as a DevOps engineer navigating 10 levels — from a Server Room to a full Meltdown — answering real technical questions at each terminal you encounter.

Every question is based on real-world DevOps scenarios: broken deployments, Kubernetes misconfigurations, Terraform state locks, Datadog alerts, Linux OOM kills, and more.

---

## 🗺️ Levels

| # | Level | Topics |
|---|-------|--------|
| 1 | Server Room | Docker, containers, port binding |
| 2 | K8s Cluster | Pods, Services, DaemonSets, HPA, RBAC |
| 3 | Pipeline HQ | CI/CD, Helm, Git, branch policies |
| 4 | Cloud Ops | AWS, Terraform, IAM, VPC, cost |
| 5 | Infra Deep | Karpenter, Spot, Pulumi, ECR |
| 6 | GitOps | ArgoCD, sync, drift, image updater |
| 7 | Observability | Prometheus, Grafana, Loki, Datadog, SLOs |
| 8 | Databases | Postgres, Redis, migrations, connection pools |
| 9 | Incident | On-call, Linux, runbooks, post-mortems |
| 10 | Meltdown | Multi-region, chaos, error budgets, SRE |

---

## ⚔️ Difficulties

| Mode | Timer | Briefs | Hints | XP Penalty |
|------|-------|--------|-------|------------|
| 🟢 Junior Dev | None | ✓ | ✓ | None |
| 🟡 Senior Dev | 45s | ✓ | ✗ | -1 XP |
| 🔴 Staff Eng | 25s | ✗ | ✗ | -2 XP |
| 🟣 Principal Eng | 15s | ✗ | ✗ | -3 XP |
| 🔥 CTO Mode | 10s | ✗ | ✗ | -4 XP |

Higher difficulties are **locked** — beat the previous one to unlock the next.

---

## 🛒 Features

- **10 levels** with 1–5 random terminals per run
- **60+ questions** across Docker, K8s, AWS, CI/CD, Linux, databases, SRE
- **174+ DevOps terms** with hover tooltips
- **Item shop** between levels — spend XP on hints, time extensions, XP boosters
- **6 unlockable skins** — earn XP to unlock Astronaut, Robot, Ninja, Wizard, Agent
- **Streak multiplier** — answer correctly in a row for 1.5x / 2x / 3x XP
- **Level-specific music** — each chapter has its own procedural chiptune
- **3 save slots** with persistent profiles
- **Leaderboard** across sessions

---

## 🐳 Run with Docker

```bash
docker run -p 8080:80 davidgman/zero-downtime:latest
```

Then open [http://localhost:8080](http://localhost:8080)

### Docker Compose

```yaml
services:
  zerodowntime:
    image: davidgman/zero-downtime:latest
    ports:
      - "8080:80"
    restart: unless-stopped
```

```bash
docker compose up -d
```

---

## 🏗️ Build from source

```bash
# Just open the file — no build step needed
open devops_odyssey.html
```

Or serve it:

```bash
python3 -m http.server 8080
```

---

## 🐳 Build & push Docker image

```bash
docker build -t davidgman/zero-downtime:1.0.0 -t davidgman/zero-downtime:latest .
docker push davidgman/zero-downtime:1.0.0
docker push davidgman/zero-downtime:latest
```

---

## 🧱 Tech stack

- Vanilla HTML/CSS/JS — zero dependencies, zero build tools
- Web Audio API — procedural chiptune music and sound effects
- Canvas 2D — game rendering, pixel-art characters, particle effects
- LocalStorage — save profiles, difficulty unlocks, leaderboard

---

## 📄 License

MIT — do whatever you want with it.
