-- Global
vim.g.mapleader = " "
vim.g.maplocalleader = " " -- Optional, for local mappings

-- Basic settings
vim.opt.number = true         -- Line numbers
vim.opt.relativenumber = true -- Relative line numbers
vim.opt.cursorline = true     -- :set cursorline | :set nocursorline
vim.opt.wrap = true
vim.opt.scrolloff = 10

-- Indentation
vim.opt.expandtab = true
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.softtabstop = 2



-- Lazy.nvim - Plugins
-- ~/.config/nvim/init.lua
-- git clone https://github.com/folke/lazy.nvim.git ~/.config/nvim/lazy/lazy.nvim

vim.opt.rtp:prepend(vim.fn.expand("~/.config/nvim/lazy/lazy.nvim"))

require("lazy").setup({
  { "nvim-treesitter/nvim-treesitter",  build = ":TSUpdate" }, -- (optional, for syntax & indent)
  { "neovim/nvim-lspconfig" },                                 -- ✅ Required: connects Neovim to language servers
  { "williamboman/mason.nvim" },                               -- ✅ Optional: easy installer for LSPs/formatters
  { "williamboman/mason-lspconfig.nvim" },                     -- ✅ Optional: connects mason with lspconfig
  { "jose-elias-alvarez/null-ls.nvim" },                       -- ✅ Optional: for formatters & linters (like black, prettier)
  { "nvimtools/none-ls.nvim",           name = "null-ls" },    -- keeps compatibility with require("null-ls")
})

-- Setup mason
require("mason").setup()

-- Setup mason-lspconfig with some LSPs
require("mason-lspconfig").setup({
  ensure_installed = {
    "pyright",
    "lua_ls",
    --"tsserver",
    "bashls",
    --"html",
    --"cssls",
  },
})

-- Load lspconfig manually per server
local lspconfig = require("lspconfig")

lspconfig.lua_ls.setup({})
lspconfig.pyright.setup({})
lspconfig.bashls.setup({})


-- Functions
--  vim.keymap.set("n", "<leader>f", function() vim.lsp.buf.format({ async = true }) end, { desc = "Format current file" })
vim.keymap.set("n", "<leader>f", vim.lsp.buf.format, { desc = "Format file" })          -- format the current buffer
vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, { desc = "Code action" })
vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, { desc = "Rename symbol" })
vim.keymap.set("n", "<leader>d", vim.diagnostic.open_float, { desc = "Show diagnostics" })












-- OLD Version
--vim.cmd("set number")
--vim.cmd("set relativenumber")

--vim.cmd("autocmd BufRead,BufNewFile * set fileformat=unix")
--vim.cmd("set fileformat=unix")

--vim.cmd("syntax on")

--vim.cmd("highlight Normal guibg=none")
--vim.cmd("highlight NonText guibg=none")
--vim.cmd("highlight Normal ctermbg=none")
--vim.cmd("highlight NonText ctermbg=none")

-- Use Windows clipboard
--vim.api.nvim_set_keymap('v', '<C-c>', '"+y', { noremap = true, silent = true })
--vim.api.nvim_set_keymap('n', '<C-v>', '"+p', { noremap = true, silent = true })


-- Lazy vim package manager
--local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
--if not vim.loop.fs_stat(lazypath) then
--   vim.fn.system({
--      "git",
--      "clone",
--      "--filter=blob:none",
--      "https://github.com/folke/lazy.nvim.git",
--      "--branch=stable", -- latest stable release
--      lazypath,
--   })
--end
--vim.opt.rtp:prepend(lazypath)
-- /Lazy --

-- Plugins
-- local plugins = {
--   { "catppuccin/nvim", name = "catppuccin", priority = 1000 },
--   {
--     'nvim-telescope/telescope.nvim', tag = '0.1.5',
--     dependencies = { 'nvim-lua/plenary.nvim' }
--   },
--   { "nvim-treesitter/nvim-treesitter", build = ":TSUpdate" },
--   {
--     "nvim-neo-tree/neo-tree.nvim",
--     branch = "v3.x",
--     dependencies = {
--       "nvim-lua/plenary.nvim",
--       "nvim-tree/nvim-web-devicons",
--       "MunifTanjim/nui.nvim",
--     },
--   },
--     "christoomey/vim-tmux-navigator",
-- }
-- local opts = {}
--
-- require("lazy").setup(plugins, opts)

-- TELESCOPE
-- local builtin = require("telescope.builtin")
-- require("catppuccin").setup()
-- vim.keymap.set('n', '<C-p>', builtin.find_files, {})
-- vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
-- vim.keymap.set('n', '<C-n>', ':Neotree filesystem reveal left<CR>')
--
-- local config = require("nvim-treesitter.configs")
-- config.setup({
--   ensure_installed = { "lua", "javascript"},
--   highlight = { enable = true },
--   indent = { enable = true },
-- })
-- vim.cmd.colorscheme "catppuccin"





-- -- Bootstrap lazy.nvim
-- local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
-- if not (vim.uv or vim.loop).fs_stat(lazypath) then
--   local lazyrepo = "https://github.com/folke/lazy.nvim.git"
--   local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
--   if vim.v.shell_error ~= 0 then
--     vim.api.nvim_echo({
--       { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
--       { out, "WarningMsg" },
--       { "\nPress any key to exit..." },
--     }, true, {})
--     vim.fn.getchar()
--     os.exit(1)
--   end
-- end
-- vim.opt.rtp:prepend(lazypath)
--
-- -- Make sure to setup `mapleader` and `maplocalleader` before
-- -- loading lazy.nvim so that mappings are correct.
-- -- This is also a good place to setup other settings (vim.opt)
-- vim.g.mapleader = " "
-- vim.g.maplocalleader = "\\"
--
-- -- Setup lazy.nvim
-- require("lazy").setup({
--   spec = {
--     -- add your plugins here
--   },
--   -- Configure any other settings here. See the documentation for more details.
--   -- colorscheme that will be used when installing plugins.
--   install = { colorscheme = { "habamax" } },
--   -- automatically check for plugin updates
--   checker = { enabled = true },
-- })
--
