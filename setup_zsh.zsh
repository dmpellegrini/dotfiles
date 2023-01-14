#!/usr/bin/env zsh

echo "Enter superuser (sudo) password to edit /etc/shells"
echo '/usr/local/bin/zsh' | sudo tee -a '/etc/shells' >/dev/null

echo "Enter user password to change login shell"
chsh -s '/usr/local/bin/zsh'