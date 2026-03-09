-- Leader
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Line nums
vim.opt.number = true
vim.opt.relativenumber = true

-- 24 bit color
vim.opt.termguicolors = true

-- Virtual text display for warnings
vim.diagnostic.config({
  virtual_text = true
})

vim.opt.expandtab = true
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4
