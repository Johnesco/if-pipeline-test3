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
python /c/code/ifhub/tools/compile.py if-pipeline-test3

# Publish to GitHub Pages (first time creates repo)
python /c/code/ifhub/tools/publish.py if-pipeline-test3
```

## Testing

```bash
python /c/code/ifhub/tools/testing/run_walkthrough.py --config tests/project.conf --no-seed --no-save
python /c/code/ifhub/tools/testing/run_tests.py --config tests/project.conf
python /c/code/ifhub/tools/testing/find_seeds.py --config tests/project.conf
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
