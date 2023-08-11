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
-- Neo-tree
{
    'nvim-neo-tree/neo-tree.nvim',
    branch = 'v3.x',
    dependencies = {
      'nvim-lua/plenary.nvim', 'nvim-tree/nvim-web-devicons',
      'MunifTanjim/nui.nvim', 's1n7ax/nvim-window-picker'
    }
},

-- Treesitter
{
    'nvim-treesitter/nvim-treesitter'
},

-- Telescope
{
    'nvim-telescope/telescope.nvim',
    tag = '0.1.2',
    dependencies = { 'nvim-lua/plenary.nvim' }
},

-- ColorScheme
{
    'joshdick/onedark.vim'
},

-- NVIM LSP Client
{
    'neovim/nvim-lspconfig'
}

})
