# Install Guide

Repository
- https://github.com/Degree-21/AICS

Requirements
- macOS/Linux shell
- Executable script: scripts/init-docs.sh

Option 1: Clone and initialize into project root

```bash
git clone https://github.com/Degree-21/AICS.git aics-docs
cd aics-docs && chmod +x scripts/init-docs.sh
# English default
scripts/init-docs.sh ../your-project en
# Chinese default
scripts/init-docs.sh ../your-project zh
# Overwrite existing files
scripts/init-docs.sh ../your-project en --force
```

Option 2: Clone and install into your project's aics-docs directory

```bash
cd your-project
git clone https://github.com/Degree-21/AICS.git aics-docs
chmod +x aics-docs/scripts/init-docs.sh
# Install into aics-docs (choose English or Chinese default)
aics-docs/scripts/init-docs.sh ./aics-docs en
aics-docs/scripts/init-docs.sh ./aics-docs zh
```

Option 3: Add as a submodule

```bash
cd your-project
git submodule add https://github.com/Degree-21/AICS.git aics-docs
chmod +x aics-docs/scripts/init-docs.sh
aics-docs/scripts/init-docs.sh . en
```

Uninstall/Cleanup
- Remove copied docs/ subdirectories and README.* files from your project
- If using submodule: `git submodule deinit -f aics-docs && git rm -f aics-docs`

Next Steps
- Usage guide: docs/USAGE.en.md
- Language switching: README.en.md and README.zh.md link each other at the top
