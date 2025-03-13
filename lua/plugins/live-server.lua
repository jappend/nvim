return {
  "barrett-ruth/live-server.nvim",
  build = 'npm install -g live-server',  -- Garante que o live-server seja instalado globalmente
  cmd = { "LiveServerStart", "LiveServerStop" },  -- Comandos disponíveis
  config = true,  -- Carrega a configuração padrão do plugin
  ft = { "html", "css", "javascript", "typescript", "typescriptreact", "javascriptreact", "vue", "svelte" }  -- Define os tipos de arquivo onde o Live Server será ativado
}
