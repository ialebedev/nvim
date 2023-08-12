local lazypath = vim.fn.stdpath('data') .. '/lazy/lazy.nvim'
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        'git',
        'clone',
        '--filter=blob:none',
        'https://github.com/folke/lazy.nvim.git',
        '--branch=stable', -- latest stable release
        lazypath,
    })
end
vim.opt.rtp:prepend(lazypath)

require('lazy').setup({

-- ColorScheme
{
    'joshdick/onedark.vim'
},

-- Lualine
{
    'nvim-lualine/lualine.nvim',
    dependencies = {
        'nvim-tree/nvim-web-devicons',
        'linrongbin16/lsp-progress.nvim'
    }
},

-- Neo-tree
{
    'nvim-neo-tree/neo-tree.nvim',
    branch = 'v3.x',
    dependencies = {
        'nvim-lua/plenary.nvim',
        'nvim-tree/nvim-web-devicons',
        'MunifTanjim/nui.nvim',
        's1n7ax/nvim-window-picker'
    }
},

-- Telescope
{
    'nvim-telescope/telescope.nvim',
    tag = '0.1.2',
    dependencies = { 'nvim-lua/plenary.nvim' }
},

-- Treesitter
{
    'nvim-treesitter/nvim-treesitter'
},

-- NVIM LSP Client
{
    'neovim/nvim-lspconfig'
},

-- Auto-complete
{
    'hrsh7th/cmp-nvim-lsp',
    'hrsh7th/cmp-buffer',
    'hrsh7th/cmp-path',
    'hrsh7th/cmp-cmdline',
    'hrsh7th/nvim-cmp',

    'hrsh7th/cmp-vsnip',
    'hrsh7th/vim-vsnip'
},

-- Mason
{
    'williamboman/mason.nvim'
},

-- Auto Pairs
{
    'windwp/nvim-autopairs'
},

-- Buffer Line
{
    'akinsho/bufferline.nvim',
    version = "*",
    dependencies = 'nvim-tree/nvim-web-devicons'
},

-- Nvim Comment
{
    'terrortylor/nvim-comment'
},

-- Toggle Term
{
    'akinsho/toggleterm.nvim',
    version = "*",
    config = true
}

})
