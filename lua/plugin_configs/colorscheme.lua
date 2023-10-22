require("catppuccin").setup({
	flavour = "latte",
    --transparent_background = true
    color_overrides = {
        all = {
            base = "#000000",
            mantle = "#16151c",
            crust = "#16151c",
            text = "#C6D0E5",
            surface0 = "#43465A",
            blue = "#007FFF",
            lavender = "#B4BEFE"
        },
    },
})

vim.cmd.colorscheme("catppuccin")
