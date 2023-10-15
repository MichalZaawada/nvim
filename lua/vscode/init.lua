-- Disable syntax highlighting
vim.cmd("syntax off")

vim.g.mapleader = " "

local keymap = vim.keymap
local vscode = vim.fn.VSCodeNotify
-- Menus 
keymap.set({'n', 'v'}, '<leader>ff', function() vscode('workbench.action.quickOpen') end)
keymap.set({'n', 'v'}, '<leader>fa', function() vscode('workbench.action.showCommands') end)

-- Movement
keymap.set('n', '<C-j>', function() vscode('workbench.action.navigateDown') end)
keymap.set('n', '<C-k>', function() vscode('workbench.action.navigateUp') end)
keymap.set('n', '<C-h>', function() vscode('workbench.action.navigateLeft') end)
keymap.set('n', '<C-l>', function() vscode('workbench.action.navigateRight') end)

keymap.set({'n', 'v'}, '<Tab>', function() vscode('workbench.action.nextEditorInGroup') end)
keymap.set({'n', 'v'}, '<S-Tab>', function() vscode('workbench.action.previousEditorInGroup') end)

-- Toggle 
keymap.set({'n', 'v'}, '<leader>tt', function() vscode('workbench.action.terminal.toggleTerminal') end)

-- Go to 
keymap.set({'n', 'v'}, "<leader>gr", function() vscode("editor.action.goToReferences") end)

keymap.set({'n', 'v'}, "<leader>gd", function() vscode("editor.action.revealDefinition") end)

-- Split 
keymap.set({'n', 'v'}, "<leader>sl", function() vscode("workbench.action.spliteditorRight") end)
keymap.set({'n', 'v'}, "<leader>sk", function() vscode("workbench.action.spliteditorUp") end)
keymap.set({'n', 'v'}, "<leader>sj", function() vscode("workbench.action.spliteditorDown") end)
keymap.set({'n', 'v'}, "<leader>sh", function() vscode("workbench.action.spliteditorLeft") end)

-- Closing
keymap.set({'n', 'v'}, "<leader>q", function() vscode("workbench.action.closeActiveEditor") end)
