#!/usr/bin/env bash
# Cuts a lockstep release across every package in packages/: bumps each
# package's `version:` field to match, commits, tags, and pushes.
#
# Usage: scripts/release.sh v0.2.0
set -euo pipefail

if [[ $# -ne 1 ]]; then
  echo "Usage: $0 vX.Y.Z" >&2
  exit 1
fi

TAG="$1"
VERSION="${TAG#v}"

if [[ ! "$VERSION" =~ ^[0-9]+\.[0-9]+\.[0-9]+$ ]]; then
  echo "Expected a semver tag like v0.2.0, got: $TAG" >&2
  exit 1
fi

REPO_ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"

for pubspec in "$REPO_ROOT"/packages/*/pubspec.yaml; do
  echo "Bumping $pubspec to $VERSION"
  # Only touches the top-level `version:` key, not any dependency version.
  sed -i '' "s/^version: .*/version: $VERSION/" "$pubspec"
done

git -C "$REPO_ROOT" add -A
git -C "$REPO_ROOT" commit -m "chore: release $TAG"
git -C "$REPO_ROOT" tag "$TAG"

echo
echo "Tagged $TAG locally. Push with:"
echo "  git -C \"$REPO_ROOT\" push origin main --tags"
