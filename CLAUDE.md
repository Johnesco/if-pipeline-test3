# Tilt — An Inform 7 Game

## Project Structure

```
C:\code\ifhub\projects\if-pipeline-test3\
├── CLAUDE.md              ← You are here
├── story.ni               ← Source of truth (Inform 7 source)
├── if-pipeline-test3.ulx              ← Compiled Glulx binary (build output)
├── play.html              ← Browser-playable game (Parchment player)
├── lib/parchment/         ← Parchment JS libraries + if-pipeline-test3.ulx.js
├── .github/workflows/     ← GitHub Actions workflow for Pages deployment
└── tests/
    ├── project.conf       ← Test configuration
    ├── run-tests.sh       ← RegTest runner (wrapper)
    ├── run-walkthrough.sh ← Walkthrough runner (wrapper)
    ├── find-seeds.sh      ← Seed discovery (wrapper)
    ├── seeds.conf         ← Golden seeds
    ├── if-pipeline-test3.regtest      ← Regression tests
    └── inform7/
        ├── walkthrough.txt        ← Walkthrough commands
        └── walkthrough_output.txt ← Generated transcript
```

## Shared Resources

- **Inform 7 hub**: `C:\code\ifhub\CLAUDE.md`
- **Syntax reference**: `C:\code\ifhub\reference\syntax-guide.md`
- **Text formatting**: `C:\code\ifhub\reference\text-formatting.md`
- **Testing framework**: `C:\code\ifhub\tools\testing\`
- **Web player setup**: `C:\code\ifhub\tools\web\`

## Build & Deploy

```bash
# Compile + set up web player
bash /c/code/ifhub/tools/compile.sh if-pipeline-test3

# Publish to GitHub Pages (first time creates repo)
bash /c/code/ifhub/tools/publish.sh if-pipeline-test3
```

## Testing

```bash
wsl -e bash tests/run-walkthrough.sh --no-seed --no-save
wsl -e bash tests/run-tests.sh
wsl -e bash tests/find-seeds.sh
```

## Play Locally

```bash
python -m http.server 8000
# Then open http://localhost:8000/play.html
```

## Key Rules

- `story.ni` is the single source of truth
- Do NOT create `.inform/` IDE bundles
- For Inform 7 syntax and conventions, see `C:\code\ifhub\CLAUDE.md`
