vim.g.mapleader = " "

local keymap = vim.keymap
local is_vscode = vim.g.vscode

-- increment, decrement
keymap.set('n', '+', '<C-a>')
keymap.set('n', '-', '<C-x>')

-- Ex
--keymap.set('n', '<leader>pv', vim.cmd.Ex)

-- select all
keymap.set('n', '<C-a>', 'gg<S-v>G')

-- dont yank with x
keymap.set('n', 'x', '"_x')

-- moving lines in visual mode
keymap.set("v", "J", ":m '>+1<CR>gv=gv")
keymap.set("v", "K", ":m '<-2<CR>gv=gv")


-- yank to pc register
keymap.set({"n", "v"}, "<leader>y", [["+y]])
keymap.set("n", "<leader>Y", [["+Y]])

if not is_vscode then

    -- write
    keymap.set({'n', 'v'}, '<leader>w', vim.cmd.w)

    -- split
    keymap.set({'n', 'v'}, '<leader>sh', '<C-w>s')
    keymap.set({'n', 'v'}, '<leader>sv', '<C-w>v')

    -- movement through windows
	keymap.set({'n', 'v'}, '<C-j>', '<C-w>j')
	keymap.set({'n', 'v'}, '<C-k>', '<C-w>k')
	keymap.set({'n', 'v'}, '<C-h>', '<C-w>h')
	keymap.set({'n', 'v'}, '<C-l>', '<C-w>l')

    keymap.set({'n', 'v'}, '<C-Down>', '<C-w>j')
	keymap.set({'n', 'v'}, '<C-Up>', '<C-w>k')
	keymap.set({'n', 'v'}, '<C-Left>', '<C-w>h')
	keymap.set({'n', 'v'}, '<C-Right>', '<C-w>l')

    -- resize windows
	keymap.set({'n', 'v'}, '<S-Left>', '<C-w>>')
	keymap.set({'n', 'v'}, '<S-Right>', '<C-w><')
	keymap.set({'n', 'v'}, '<S-Up>', '<C-w>-')
	keymap.set({'n', 'v'}, '<S-Down>', '<C-w>+')
end
