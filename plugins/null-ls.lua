return {
  "jose-elias-alvarez/null-ls.nvim",
  opts = function(_, config)
    local null_ls = require "null-ls"

    config.sources = {
      null_ls.builtins.diagnostics.flake8,
      null_ls.builtins.diagnostics.mypy,
      null_ls.builtins.formatting.isort,
    }
    return config -- return final config table
  end,
}
