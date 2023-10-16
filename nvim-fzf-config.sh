#!/usr/bin/bash
nvim $(rg --files ~/.config ~/.dwm ~/.zshrc | fzf)
