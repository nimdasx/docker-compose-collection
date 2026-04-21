```
# ini digunakan agar claude code menggunakan model dari gemini aistudio
# setting di claude code
# global config
# ~/.claude/settings.json
# atau specific di project direktori
# <project directory>/.claude/settings.json
{
  "env": {
    "ANTHROPIC_BASE_URL": "http://x.x.x.x:4000",
    "ANTHROPIC_AUTH_TOKEN": "bebas-isi-apapun"
  },
  "model": "opus[1m]"
}
```