return {
  colorscheme = "catppuccin-frappe",

  lsp = {
    setup_handlers = {
      rust_analyzer = function(_, opts) require("rust-tools").setup { server = opts } end
    },
  },

  plugins = {
    "simrat39/rust-tools.nvim",
    {
      "williamboman/mason-lspconfig.nvim",
      opts = {
        ensure_installed = {
          "rust_analyzer",
        },
      },
    },
  },
}
