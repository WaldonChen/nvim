return {
  -- add gruvbox colorscheme
  { "ellisonleao/gruvbox.nvim" },

  -- configure LazyVim to load gruvbox
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "gruvbox",
    },
  },

  -- code highlight
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "bash",
        "cpp",
        "help",
        -- "html",
        -- "javascript",
        "json",
        "lua",
        "markdown",
        "markdown_inline",
        "python",
        -- "query",
        "regex",
        -- "tsx",
        -- "typescript",
        "vim",
        "yaml",
      },
    },
  },

  -- add pyright to lspconfig
  {
    "neovim/nvim-lspconfig",
    ---@class PluginLspOpts
    opts = {
      ---@type lspconfig.options
      servers = {
        -- pyright will be automatically installed with mason and loaded with lspconfig
        pyright = {},
        clangd = {},
      },
    },
  },

  {
    "danymat/neogen",
    dependencies = "nvim-treesitter/nvim-treesitter",
    config = true,
    keys = {
      {
        "<leader>cg",
        function()
          require("neogen").generate({})
        end,
        desc = "Generate annotations",
      },
    },
  },

  { "echasnovski/mini.comment", enabled = false },
  { "numToStr/Comment.nvim", opts = { ignore = "^$" }, config = true },
}
