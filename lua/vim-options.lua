-- Important keymapping
vim.g.mapleader = " "			-- Configure "space" as leader key

-- Basic Config
vim.opt.number = true			-- Show line count
vim.opt.relativenumber = true	-- Relative numbers (good for navigation)
vim.opt.cursorline = true		-- Highlight current line
vim.opt.wrap = false			-- No line breaking
vim.opt.tabstop = 2		        -- TAB size (2 spaces)
vim.opt.shiftwidth = 2			-- Automatic indentation (2 spaces)
vim.opt.expandtab = true		-- Convert TABs to spaces
vim.opt.smartindent = true		-- Smart indentation
vim.opt.hlsearch = true			-- Highlight searches
vim.opt.incsearch = true		-- Search while typing
vim.opt.ignorecase = true		-- Ignore uppercase/lowercase in search
vim.opt.smartcase = true		-- If uppercase, respect it
vim.opt.clipboard = "unnamedplus"	-- Use system's default clipboard

-- Interface Config
vim.opt.termguicolors = true		-- Turn on terminal colors
vim.opt.signcolumn = "yes"		-- Always show sign column

-- Save with Ctrl+s
vim.keymap.set("n", "<C-s>", ":w<CR>", { desc = "Saves the file (NORMAL mode)" })
vim.keymap.set("i", "<C-s>", "<Esc>:w<CR>", { desc = "Saves the file (INSERT mode)" })

-- Exit with Ctrl+q
vim.keymap.set("n", "<C-q>", ":q<CR>", { desc = "Exits Neovim (NORMAL mode)" })
vim.keymap.set("i", "<C-q>", "<Esc>:q<CR>", { desc = "Exits Neovim (INSERT mode)" })

-- setup diagnostics
vim.diagnostic.config({ virtual_text = false })
vim.keymap.set("n", "<leader>de", vim.diagnostic.open_float, { desc = "Opens error diagnostics" })
-- set up LSP signs
for type, icon in pairs({
	Error = "\u{2716}",
	Warn = "\u{26A0}",
	Hint = "\u{279C}",
	Info = "\u{2139}",
}) do
	local hl = "DiagnosticSign" .. type
	vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = "" }) 
end
