local keymap = vim.keymap

keymap.set({'n', 'v'}, '<Tab>', vim.cmd.bnext)
keymap.set({'n', 'v'}, '<S-Tab>', vim.cmd.bprevious)
