-- Base
vim.opt.shell = '/bin/bash'

-- Indent
vim.opt.expandtab = true
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.smartindent = true

--Search
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.hlsearch = false

-- Mouse
vim.opt.mouse = 'a'
vim.opt.mousefocus = true

-- Line Numbers
vim.opt.number = true
vim.opt.relativenumber = true

-- Splits
vim.opt.splitbelow = true
vim.opt.splitright = true

-- Clipboard
vim.opt.clipboard = 'unnamedplus'

-- Fillchars
vim.opt.fillchars = {
    vert = '|',
    fold = ' ',
    eob = ' ',
    msgsep = '‾',
    foldopen = "▾",
    foldsep = "│",
    foldclose = "▸"
}
