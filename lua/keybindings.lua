vim.g.mapleader = " "

local keymap = vim.keymap

keymap.set('n', '+', '<C-a>')
keymap.set('n', '-', '<C-x>')

keymap.set('n', '<leader>pv', vim.cmd.Ex)
