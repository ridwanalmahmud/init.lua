require("config")

-- vim.cmd([[ colorscheme rose-pine-moon ]])
-- vim.cmd([[ colorscheme catppuccin ]])
vim.cmd([[ colorscheme gruvbox ]])
-- vim.cmd([[ colorscheme visual_studio_code ]])
-- vim.cmd([[ colorscheme tokyonight ]])
function ColorMyPencils()
    vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
    vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
end

ColorMyPencils()
