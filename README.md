# Jekyll Site with CI/CD

This repository contains a Jekyll site configured with GitHub Actions for Continuous Integration and a local pre-commit hook to ensure build integrity.

## Getting Started

### Prerequisites

- Ruby 3.1 or higher
- Bundler

### Installation

1. Clone the repository.
2. Install dependencies:
   ```sh
   bundle install
   ```

### Local Development

To run the site locally:
```sh
bundle exec jekyll serve
```

## Continuous Integration

A GitHub Actions workflow is set up in `.github/workflows/ci.yml` to automatically build the site on every Pull Request to `main` or `master`. This ensures that broken builds are not merged.

## Local Pre-commit Hook

A pre-commit hook is provided to check the build locally before committing. This prevents committing broken code.

To install the hook, run:
```sh
./setup-hooks.sh
```

This will copy the hook script to `.git/hooks/pre-commit`. Now, every time you run `git commit`, the site will be built in a temporary directory. If the build fails, the commit will be aborted.
