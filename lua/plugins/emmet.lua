return {
  "mattn/emmet-vim",
  config = function()
    vim.g.user_emmet_leader_key = '<C-Y>'  -- Define a tecla líder para o Emmet
  end,
  ft = { "html", "css", "javascript", "typescript", "typescriptreact", "javascriptreact", "vue", "svelte" }  -- Define os tipos de arquivo onde o Emmet será ativado
}
