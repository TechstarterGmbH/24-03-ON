#!/usr/bin/env bash

echo "Building container..."

if ! make images-runner-build; then
  echo "Failed to build container"
  exit 1
fi

if ! nix develop --command bash -c "make container-login"; then
  echo "Failed to login to container"
  exit 1
fi

if ! nix develop --command bash -c "make images-runner-push"; then
  echo "Failed to push container"
  exit 1
fi

