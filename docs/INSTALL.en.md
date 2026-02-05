# Install Guide

Repository
- https://github.com/Degree-21/AICS

Option 1: Clone as a Standalone Directory (Recommended)
Run this in your project root:

```bash
git clone https://github.com/Degree-21/AICS.git aics-docs
# The aics-docs/ directory is now ready to use
```

Option 2: Add as a Git Submodule
If your project is a Git repository and you want to keep docs updated:

```bash
git submodule add https://github.com/Degree-21/AICS.git aics-docs
# The aics-docs/ directory is added as a submodule
```

Next Steps
- Read `aics-docs/README.en.md` to start
- Follow "Step 0" to generate `aics-docs/project-context.md`

Advanced Usage (Manual Extraction)
If you want to extract docs into another location (detached from Git):

```bash
# Clone to temp dir
git clone https://github.com/Degree-21/AICS.git temp-aics
chmod +x temp-aics/scripts/init-docs.sh

# Copy docs to your docs/ directory (without .git metadata)
temp-aics/scripts/init-docs.sh ./docs en

# Cleanup
rm -rf temp-aics
```

Uninstall/Cleanup
- Option 1: `rm -rf aics-docs`
- Option 2: `git submodule deinit -f aics-docs && git rm -f aics-docs`
