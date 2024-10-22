return {
     {
        'lewis6991/gitsigns.nvim',
        opts = {
            signs = {
                add = { text = '+' },
                delete = { text = '_' },
                change = { text = '~' },
                topdelete = { text = '‾' },
                changedelete = { text = '~' },
            },
        },
    },
    {
        "ellisonleao/gruvbox.nvim",
        priority = 1000,
        config = true,
        opts = {}, 
    },
    {
        "catppuccin/nvim", name = "catppuccin", priority = 1000 
    },
    {
        "christoomey/vim-tmux-navigator"
    },
    {
        "nvim-treesitter/playground",
    },
}
