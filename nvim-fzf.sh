#!/usr/bin/bash
nvim $(rg --files ~ | fzf)
