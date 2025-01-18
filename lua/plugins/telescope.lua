return {
  'nvim-telescope/telescope.nvim', tag = '0.1.8',
  dependencies = { 'nvim-lua/plenary.nvim' },
  config = function()
    local builtin = require("telescope.builtin")
    vim.keymap.set('n', '<leader>p', builtin.find_files, { desc = "Telescope: Find Files" })
    vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = "Telescope: Live Grep" })
  end
}
