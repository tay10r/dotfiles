-- init.lua

-- Editor settings (converted from Vimscript)
vim.opt.list = true
vim.opt.number = true
vim.opt.expandtab = true
vim.opt.shiftwidth = 2
vim.opt.tabstop = 2
vim.opt.foldmethod = "syntax"
vim.opt.wrap = false
vim.opt.termguicolors = true
vim.opt.colorcolumn = "120"

-- Load plugins
require("plugins")

-- Colorscheme
vim.cmd("colorscheme cyberdream")

-- Auto-enable ClangFormat for C/C++ files
vim.api.nvim_create_autocmd("FileType", {
  pattern = { "c", "cpp" },
  callback = function()
    vim.cmd("ClangFormatAutoEnable")
  end,
})
