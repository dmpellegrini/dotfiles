#!/usr/bin/env zsh

echo "\n<<< Starting Node Setup >>>\n"

if exists node; then
  echo "Node $(node --version) & NPM $(npm --version) already installed"
else
  echo "Installing Node & NPM with n..."
  n lts
fi
