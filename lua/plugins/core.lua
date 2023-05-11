return {
  -- add gruvbox colorscheme
  { "ellisonleao/gruvbox.nvim" },
  {
    "olimorris/onedarkpro.nvim",
    priority = 1000, -- Ensure it loads first
  },
  { "catppuccin/nvim", name = "catppuccin" },
  { "TimUntersberger/neogit" },
  -- configure LazyVim to load gruvbox
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "onedark",
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
  -- Alternative subsitute
  -- :%s /\(\a\+\)\d\+/\1/g          -- :substitute
  -- :S /(%a+)%d+/%1/g               -- :AltSubstitute
  -- deviceModel2020 -> deviceModel  -- effect
  {
    "chrisgrieser/nvim-alt-substitute",
    opts = true,
    -- lazy-loading with `cmd =` does not work well with incremental preview
    event = "CmdlineEnter",
  },
}
