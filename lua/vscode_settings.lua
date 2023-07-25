-- Disable syntax highlighting
vim.cmd("syntax off")

-- Menus 
vim.keymap.set('n', '<leader>ff', function() vim.fn.VSCodeNotify('workbench.action.quickOpen') end)
vim.keymap.set('v', '<leader>ff', function() vim.fn.VSCodeNotify('workbench.action.quickOpen') end)

vim.keymap.set('n', '<leader>fa', function() vim.fn.VSCodeNotify('workbench.action.showCommands') end)
vim.keymap.set('v', '<leader>fa', function() vim.fn.VSCodeNotify('workbench.action.showCommands') end)

-- Movement
vim.keymap.set('v', '<C-j>', function() vim.fn.VSCodeNotify('workbench.action.navigateDown') end)
vim.keymap.set('n', '<C-k>', function() vim.fn.VSCodeNotify('workbench.action.navigateUp') end)
vim.keymap.set('v', '<C-k>', function() vim.fn.VSCodeNotify('workbench.action.navigateUp') end)
vim.keymap.set('n', '<C-h>', function() vim.fn.VSCodeNotify('workbench.action.navigateLeft') end)
vim.keymap.set('v', '<C-h>', function() vim.fn.VSCodeNotify('workbench.action.navigateLeft') end)
vim.keymap.set('n', '<C-l>', function() vim.fn.VSCodeNotify('workbench.action.navigateRight') end)
vim.keymap.set('v', '<C-l>', function() vim.fn.VSCodeNotify('workbench.action.navigateRight') end)

-- Toggle 
vim.keymap.set('n', '<leader>tt', function() vim.fn.VSCodeNotify('workbench.action.terminal.toggleTerminal') end)
vim.keymap.set('v', '<leader>tt', function() vim.fn.VSCodeNotify('workbench.action.terminal.toggleTerminal') end)

-- Go to 
vim.keymap.set("n", "<leader>gr", function() vim.fn.VSCodeNotify("editor.action.goToReferences") end)
vim.keymap.set("v", "<leader>gr", function() vim.fn.VSCodeNotify("editor.action.goToReferences") end)

vim.keymap.set("n", "<leader>gd", function() vim.fn.VSCodeNotify("editor.action.revealDefinition") end)
vim.keymap.set("v", "<leader>gd", function() vim.fn.VSCodeNotify("editor.action.revealDefinition") end)

-- Split 
vim.keymap.set("n", "<leader>sv", function() vim.fn.VSCodeNotify("workbench.action.splitEditorRight") end)
vim.keymap.set("v", "<leader>sv", function() vim.fn.VSCodeNotify("workbench.action.splitEditorRight") end)

vim.keymap.set("n", "<leader>sh", function() vim.fn.VSCodeNotify("workbench.action.splitEditorDown") end)
vim.keymap.set("v", "<leader>sh", function() vim.fn.VSCodeNotify("workbench.action.splitEditorDown") end)

-- Closing
vim.keymap.set("n", "<leader>q", function() vim.fn.VSCodeNotify("workbench.action.closeActiveEditor") end)
vim.keymap.set("v", "<leader>q", function() vim.fn.VSCodeNotify("workbench.action.closeActiveEditor") end)
