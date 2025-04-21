-- lua/plugins.lua

local lazypath = vim.fn.stdpath("config") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  print("Installing lazy.nvim...")
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    lazypath,
  })
end

vim.opt.rtp:prepend(lazypath)

require("lazy").setup({

  -- Misc
  { "rhysd/vim-clang-format" },
  { "neovim/nvim-lspconfig" },
  { "neoclide/coc.nvim", branch = "release" },
  {
    "olimorris/persisted.nvim",
    event = "BufReadPre", -- Ensure the plugin loads only when a buffer has been loaded
    opts = {
      -- Your config goes here ...
    },
  },
  {
    "nvim-telescope/telescope.nvim", tag = "0.1.8",
    dependencies = { "nvim-lua/plenary.nvim" }
  },
  { "smartpde/telescope-recent-files" },

  -- Language support
  { "tikhomirov/vim-glsl" },

  -- Colorschemes
  { "mhartington/oceanic-next" },
  { "tomasr/molokai" },
  { "fmoralesc/molokayo" },
  { "navarasu/onedark.nvim" },
  { "projekt0n/github-nvim-theme" },
  { "scottmckendry/cyberdream.nvim" },

})

require("telescope").load_extension("recent_files")
