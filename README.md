# Conbeard's Agents Setup

A collection of templates and tools for setting up agent-friendly project structures. This repository provides standardized templates for AGENTS.md files and documentation structures that help AI coding agents understand and work with your codebase effectively.

## Quick Setup

Run this one-liner in your project directory:

```bash
curl -fsSL https://raw.githubusercontent.com/conbeard/agents/main/install.sh | bash
```

This will create `AGENTS.md` and `docs/README.md` templates in your project.

## What's Included

- **AGENTS.md Template** - Core agent instructions file that defines:
  - Project specifications and key documents
  - Codebase structure overview
  - Quality gates and standards
  - Development workflows (git-worktrees, commits, PRs)

- **docs/README.md Template** - Documentation index that provides:
  - Central documentation hub
  - Organized tables for design, architecture, development, and features
  - Clear documentation principles
  - Minimal, technical structure

- **Install Script** - Automated setup that:
  - Downloads templates to your project root
  - Creates docs/templates/ directory structure
  - Prompts before overwriting existing files

## Quick Start

### Option 1: Use the Install Script

Run this command in your project directory:

```bash
curl -fsSL https://raw.githubusercontent.com/conbeard/agents/main/install.sh | bash
```

Or download and run locally:

```bash
curl -O https://raw.githubusercontent.com/conbeard/agents/main/install.sh
chmod +x install.sh
./install.sh
```

### Option 2: Manual Setup

1. Copy `src/AGENTS.md` to your project root as `AGENTS.md`
2. Create `docs/templates/` directory structure
3. Copy `src/docs/README.md` to your project as `docs/README.md`
4. Customize templates for your project

## File Structure

After installation, your project will have:

```
your-project/
├── AGENTS.md              # Agent instructions
└── docs/
    ├── README.md          # Documentation index
    └── templates/         # Doc templates
```

## Usage

### For Project Maintainers

1. **Install the templates** in your project
2. **Customize AGENTS.md** with your project-specific:
   - Codebase structure
   - Quality gates (tests, linters, build steps)
   - Development workflow specifics
3. **Fill in documentation tables** in docs/README.md
4. **Keep it updated** as your project evolves

### For AI Agents

When working with projects using these templates:

1. Read `AGENTS.md` first for project-specific instructions
2. Consult `docs/README.md` for documentation overview
3. Follow defined workflows (git-worktrees, commit patterns)
4. Check quality gates before completing tasks

## Key Principles

- **Documentation describes intent, code reflects reality** - Keep docs in sync with code
- **Code is the source of truth** - When docs diverge, update documentation
- **Use templates for consistency** - Maintain standard formats across docs
- **Atomic commits** - Make small, focused commits frequently
- **Git-worktrees for features** - Use worktrees for isolated development

## Customization

These templates are meant to be adapted to your needs:

- Add project-specific sections to AGENTS.md
- Create custom templates in docs/templates/
- Modify quality gates for your tech stack
- Adjust workflows to match your team's process

## Contributing

Contributions welcome! Please:

1. Fork the repository
2. Create a feature branch
3. Make your changes
4. Submit a pull request

## License

MIT License - feel free to use and modify for your projects

## Questions?

Open an issue or reach out with questions about using these templates.


