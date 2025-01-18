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
vim.cmd("colorscheme desert")		-- Choose basic theme

-- Nice keymapping
vim.g.mapleader = " "			-- Configure "space" as leader key

-- Save with Ctrl+s
vim.keymap.set("n", "<C-s>", ":w<CR>")
vim.keymap.set("i", "<C-s>", "<Esc>:w<CR>")

-- Exit with Ctrl+q
vim.keymap.set("n", "<C-q>", ":q<CR>")
vim.keymap.set("i", "<C-q>", "<Esc>:q<CR>")
