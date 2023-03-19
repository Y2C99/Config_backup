-- disable netrw at the very start of your init.lua (strongly advised)
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
-- nvim-tree
require("nvim-tree").setup({
  sort_by = "case_sensitive",
  renderer = {
    group_empty = true,
  },
  filters = {
    dotfiles = true,
  },
})
-- normal settings
vim.o.number = true
vim.o.rnu = true
-- tab 
vim.o.tabstop = 4
vim.o.shiftwidth = 4
vim.o.expandtab = true
vim.o.smartindent = true
--
vim.o.cursorline = true
vim.o.termguicolors = true
--leader
vim.g.mapleader = 's'
-- key bindings
vim.keymap.set("i", "jj", "<Esc>", options)
vim.keymap.set("n"," ",":",options)
-- colorscheme
vim.cmd("colorscheme sonokai")
-- load packer
require('init-packer')
require('init-lsp')
require('bufferline').setup{}
require('wlsample.vscode')
require('leap').add_default_mappings()
require('nvim-autopairs').setup()
require('init-cmp')
