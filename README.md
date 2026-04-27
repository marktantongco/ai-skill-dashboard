# AI Skill Dashboard for OpenCode

A self-contained dashboard to manage OpenCode system prompts, skills, health checks, and automated syncing. Built to eliminate one-off work by turning repeat tasks into reusable skills.

## ✨ Features
- **Skill Health Monitoring**: Auto-checks all skills for valid `SKILL.md` with required sections
- **YOLO Mode Integration**: Highlights skills using YOLO (auto-approve) mode in red
- **Cron Job Tracking**: Shows scheduled tasks for each skill
- **Executable Dashboard**: Run skill checks directly from the UI with one click
- **Auto-Sync**: Propagates system prompt (`AGENTS.md`) and dashboard to all git repos on version updates
- **Online Access**: Deployed to GitHub Pages and Vercel for remote access

## 🚀 Installation
```bash
git clone https://github.com/marktantongco/ai-skill-dashboard.git
cd ai-skill-dashboard
```

## 📖 Usage
1. Open `dashboard.html` in any browser (local or online)
2. View skill health status (green=pass, red=fail)
3. Click "Run Skill" buttons to execute skill checks
4. Monitor cron jobs and YOLO-enabled skills

### Run Health Check Manually
```bash
bash check-all-skills.sh
```

### Sync System Prompt to All Repos
```bash
bash skills/system-prompt-sync/startup-check.sh
```

## 🌐 Deployment
### GitHub Pages
Automatically deployed from main branch root. Access at:  
https://marktantongco.github.io/ai-skill-dashboard/dashboard.html

### Vercel
Deployed with Vercel for global CDN access. Uses `AI_GATEWAY_API_KEY` for AI integrations.

## 📂 Skills Included
- `system-prompt-sync`: Auto-syncs `AGENTS.md` across all git repos
- 35+ additional skills in `/skills/` directory (propagated to all repos)

## 🤝 Contributing
1. Fork the repo
2. Create a new skill in `/skills/your-skill/`
3. Add `SKILL.md` with required sections: `context`, `instructions`, `constraints`, `examples`
4. Submit a pull request

## 📄 License
MIT License — free to use, modify, and distribute.

## 🔗 Links
- GitHub Repo: https://github.com/marktantongco/ai-skill-dashboard
- GitHub Pages: https://marktantongco.github.io/ai-skill-dashboard/dashboard.html
- Vercel Deployment: (link generated after Vercel deploy)
- OpenCode Docs: https://opencode.ai/docs