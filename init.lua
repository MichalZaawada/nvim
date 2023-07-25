vim.opt.number = true
vim.opt.relativenumber = true
vim.g.mapleader = " "

if vim.g.vscode then
    require("vscode_settings")
end