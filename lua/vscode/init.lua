-- Disable syntax highlighting
vim.cmd("syntax off")

local keymap = vim.keymap
local vscode = vim.fn.VSCodeNotify

-- Menus 
keymap.set({'n', 'v'}, '<leader>ff', function() vscode('workbench.action.quickOpen') end)
keymap.set({'n', 'v'}, '<leader>fa', function() vscode('workbench.action.showCommands') end)

keymap.set({'n', 'v'}, '<leader>fs', function() vscode('workbench.action.findInFiles') end)

--Toggle
keymap.set({'n', 'v'}, '<leader>te', function() vscode('workbench.view.explorer') end)
keymap.set({'n', 'v'}, '<leader>tt', function() vscode('workbench.action.terminal.toggleTerminal') end)
keymap.set({'n', 'v'}, '<leader>tz', function() vscode('workbench.action.toggleZenMode') end)

-- Movement
keymap.set('n', '<C-j>', function() vscode('workbench.action.navigateDown') end)
keymap.set('n', '<C-k>', function() vscode('workbench.action.navigateUp') end)
keymap.set('n', '<C-h>', function() vscode('workbench.action.navigateLeft') end)
keymap.set('n', '<C-l>', function() vscode('workbench.action.navigateRight') end)

keymap.set({'n', 'v'}, '<Tab>', function() vscode('workbench.action.nextEditorInGroup') end)
keymap.set({'n', 'v'}, '<S-Tab>', function() vscode('workbench.action.previousEditorInGroup') end)

-- Go to 
keymap.set({'n', 'v'}, "gr", function() vscode("editor.action.goToReferences") end)
keymap.set({'n', 'v'}, "gd", function() vscode("editor.action.revealDefinition") end)

-- Split 
keymap.set({'n', 'v'}, "<leader>sl", function() vscode("workbench.action.splitEditorRight") end)
keymap.set({'n', 'v'}, "<leader>sk", function() vscode("workbench.action.splitEditorUp") end)
keymap.set({'n', 'v'}, "<leader>sj", function() vscode("workbench.action.splitEditorDown") end)
keymap.set({'n', 'v'}, "<leader>sh", function() vscode("workbench.action.splitEditorLeft") end)


-- Closing
keymap.set({'n', 'v'}, "<leader>q", function() vscode("workbench.action.closeActiveEditor") end)

-- Saving
keymap.set({'n', 'v'}, '<leader>w', function () vscode("workbench.action.files.save") end)

-- Zooming font
-- keymap.set({'n', 'v'}, "<C-n>", function() vscode("editor.action.fontZoomIn") end)
-- keymap.set({'n', 'v'}, "<C-m>", function() vscode("editor.action.fontZoomOut") end)