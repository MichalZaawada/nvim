require("bufferline").setup{
    highlights = {
        buffer_selected = { bold = true },
        diagnostic_selected = { bold = true },
        info_selected = { bold = true },
        info_diagnostic_selected = { bold = true },
        warning_selected = { bold = true },
        warning_diagnostic_selected = { bold = true },
        error_selected = { bold = true },
        error_diagnostic_selected = { bold = true },
    },
    options = {
        offsets = {
            {
                filetype = "NvimTree",
                text = "File Explorer",
                highlight = "Directory",
                separator = true
            }
        },
        separator_style = "slant",
        indicator = {
            style = 'underline',
        },
    }
}

local keymap = vim.keymap

-- quit
keymap.set({'n', 'v'}, '<leader>q', ':bp|bd #<CR>')
keymap.set({'n', 'v'}, 'ZZ', ':bp|bd #<CR>')

keymap.set('n', 'gb', '<CMD>BufferLinePick<CR>')
keymap.set({'n', 'v'}, '<Tab>', vim.cmd.bn)
keymap.set({'n', 'v'}, '<S-Tab>', vim.cmd.bp)
