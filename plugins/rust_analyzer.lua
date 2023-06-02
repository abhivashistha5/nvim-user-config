return {
  "simrat39/rust-tools.nvim", -- add lsp plugin
  after = { "mason-lspconfig.nvim" },
  -- Is configured via the server_registration_override installed below!
  config = function()
    require("rust-tools").setup {
      server = astronvim.lsp.server_settings "rust_analyzer", -- get the server-settings from the AstroNvim tables to allow use with lsp.server-settings and lsp.on_attach user configuration
    }
  end,
}
