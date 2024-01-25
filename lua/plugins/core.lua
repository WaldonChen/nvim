return {
  -- add gruvbox colorscheme
  { "ellisonleao/gruvbox.nvim" },
  {
    "olimorris/onedarkpro.nvim",
    priority = 1000, -- Ensure it loads first
  },
  -- transparent background
  {
    "tribela/vim-transparent",
    config = function()
      require("notify").setup({
        background_colour = "#000000",
      })
    end,
  },
  {
    "catppuccin/nvim",
    name = "catppuccin",
  },
  {
    "Neogitorg/neogit",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "sindrets/diffview.nvim",
      "nvim-telescope/telescope.nvim",
    },
    config = true,
  },
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
    "kkoomen/vim-doge",
    run = ":call doge#install()",
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
