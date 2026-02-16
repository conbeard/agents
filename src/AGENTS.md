# Agent Instructions

## Specifications

**IMPORTANT:** Before Implementing any feature, always consult documentation in `docs/README.md`

Documentation describes intent. Code reflects reality. These can diverge, but code is always the source of truth. Docs should be updated when divergence occurs

Key Documents:
1. `docs/README.md` - Documentation index. Start here.
2. `docs/templates/` - Document templates. Use for all new documents. Create new templates for new types of documents.

## Codebase Structure

High-level overview of the codebase. This does not list every file, only critical files and important folder structure.

**TODO**

## Quality Gates

Ensure high quality work, regardless of what the work is. These are the steps to take in order to check our quality.

**TODO**

## Development Workflow

Follow this workflow for all code changes. Never deviate from these steps unless directly told to do so.

1. Use git-worktrees for developing new features
```bash
# Create New Worktree from existing branch
git worktree add <path> <branch>

# Create new worktree and branch at the same time
git worktree add -b <new-branch-name> <path>

# Remove a worktree
git worktree remove <path> [--force]

```

2. Make small, atomic commits. Commits in a worktree should happen often during implementation
3. Once worktree work is done, create a pull-request or merge back to main branch

**TODO**

