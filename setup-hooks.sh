#!/bin/sh

# Ensure the .git/hooks directory exists
mkdir -p .git/hooks

# Copy the pre-commit hook
cp githooks/pre-commit .git/hooks/pre-commit

# Make it executable
chmod +x .git/hooks/pre-commit

echo "✅ Pre-commit hook installed successfully!"
