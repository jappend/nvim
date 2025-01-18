-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = "https://github.com/folke/lazy.nvim.git"
  local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
  if vim.v.shell_error ~= 0 then
    vim.api.nvim_echo({
      { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
      { out, "WarningMsg" },
      { "\nPress any key to exit..." },
    }, true, {})
    vim.fn.getchar()
    os.exit(1)
  end
end
vim.opt.rtp:prepend(lazypath)

local plugins = {
    { "catppuccin/nvim", name = "catppuccin", priority = 1000 }
}
local opts = {}

require("lazy").setup(plugins, opts)

-- Basic Config
vim.opt.number = true			-- Show line count
vim.opt.relativenumber = true		-- Relative numbers (good for navigation)
vim.opt.cursorline = true		-- Highlight current line
vim.opt.wrap = false			-- No line breaking
vim.opt.tabstop = 4			-- TAB size (4 spaces)
vim.opt.shiftwidth = 4			-- Automatic identation (4 spaces)
vim.opt.expandtab = true		-- Convert TABs to spaces
vim.opt.smartindent = true		-- Smart identation
vim.opt.hlsearch = true			-- Highlight searches
vim.opt.incsearch = true		-- Search while typing
vim.opt.ignorecase = true		-- Ignore uppercase/lowercase in search
vim.opt.smartcase = true		-- If uppercase, respect it
vim.opt.clipboard = "unnamedplus"	-- Use system's default clipboard

-- Interface Config
vim.opt.termguicolors = true		-- Turn on terminal colors
vim.opt.signcolumn = "yes"		-- Always show sign column
vim.cmd("colorscheme catppuccin \" catppucin-macchiato \" ")		-- Choose basic theme

-- Nice keymapping
vim.g.mapleader = " "			-- Configure "space" as leader key

-- Save with Ctrl+s
vim.keymap.set("n", "<C-s>", ":w<CR>")
vim.keymap.set("i", "<C-s>", "<Esc>:w<CR>")

-- Exit with Ctrl+q
vim.keymap.set("n", "<C-q>", ":q<CR>")
vim.keymap.set("i", "<C-q>", "<Esc>:q<CR>")
