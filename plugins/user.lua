return {
  {
    "max397574/better-escape.nvim",
    opts = {
      mapping = {"jk"}
    }
  },
  {
    "jackMort/ChatGPT.nvim",
    event = "VeryLazy",
    config = function()
      require("chatgpt").setup()
    end,
    dependencies = {
      "MunifTanjim/nui.nvim",
      "nvim-lua/plenary.nvim",
      "nvim-telescope/telescope.nvim"
    }
  },
  -- LSP Config
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "isort",
        "flake8",
        "mypy",
        "pyright",
        "rust-analyzer",
      }
    }
  },
  {
    "simrat39/rust-tools.nvim",
    ft = { "rust" },
  },
  -- {
  --   "saecki/crates.nvim",
  --   ft = {"rust", "toml"},
  --   config = function(_, opts)
  --     local crates = require("crates");
  --     crates.setup(opts);
  --     crates.show()
  --   end
  -- },

  -- COLORS
  {
    "navarasu/onedark.nvim",
    event = "VeryLazy",
    opts = {
      style="cool"
    },
  },
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    opts = {
      background = { light = "latte", dark = "frappe"},
    },
  },
  {
    "Mofiqul/dracula.nvim",
    event = "VeryLazy",
    opts = {
      transparent_bg = true,
    },
  },
}
