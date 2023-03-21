return {
  -- add gruvbox colorscheme
  { "ellisonleao/gruvbox.nvim" },

  { "TimUntersberger/neogit" },

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
  { "numToStr/Comment.nvim", config = true },

  -- Lsp servers
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "stylua",
        "shfmt",
        "flake8",
        "cmake-language-server", -- "cmakelang",
        "clangd",
      },
    },
  },
}
