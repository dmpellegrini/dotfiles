#!/usr/bin/env zsh

echo "\n<<< Starting Rust Setup >>>\n"

if exists rustup; then
  echo "rustup exists, skipping install"
else
  echo "rustup doesn't exist, continuing with install"
  curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
fi

