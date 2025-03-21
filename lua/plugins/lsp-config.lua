return {
  {
    "williamboman/mason.nvim",
    config = function()
      require("mason").setup()
    end
  },
  {
    "williamboman/mason-lspconfig.nvim",
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = { "lua_ls", "gopls", "jdtls", "ts_ls", "cssls" }
      })
    end
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      local capabilities = require('cmp_nvim_lsp').default_capabilities()

      local lspconfig = require("lspconfig")
      lspconfig.lua_ls.setup({
        capabilities = capabilities
      })
      lspconfig.gopls.setup({
        capabilities = capabilities,
        cmd = { "gopls" },  -- O comando para rodar o gopls
        filetypes = { "go", "gomod" }, -- Tipos de arquivos que o gopls irá lidar
        root_dir = lspconfig.util.root_pattern("go.mod", ".git"), -- Diretórios raiz (go.mod ou git)
        settings = {
          gopls = {
            analyses = {
              nilness = true, -- Habilitar análise de nilness
            },
            staticcheck = true, -- Habilitar staticcheck
          }
        },
      })
      lspconfig.jdtls.setup({
        capabilities = capabilities,
        cmd = { "jdtls" },
        root_dir = lspconfig.util.root_pattern("pom.xml", "build.gradle", ".git")
      })
      lspconfig.ts_ls.setup({
        capabilities = capabilities
      })
      vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
      vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
      vim.keymap.set({ 'n', 'v' }, '<leader>ca', vim.lsp.buf.code_action, {})
      lspconfig.cssls.setup({
        capabilities = capabilities
      })
    end
  }
}
