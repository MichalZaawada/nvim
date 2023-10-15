local keymap = vim.keymap

-- quit
keymap.set({'n', 'v'}, '<leader>q', ':bp|bd #<CR>')

keymap.set({'n', 'v'}, '<Tab>', vim.cmd.bn)
keymap.set({'n', 'v'}, '<S-Tab>', vim.cmd.bp)
