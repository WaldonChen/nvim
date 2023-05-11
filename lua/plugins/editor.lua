return {
  -- add telescope extensions
  {
    "nvim-telescope/telescope-fzf-native.nvim",
    dependencies = {
      "nvim-telescope/telescope.nvim",
    },
    build = "make",
    config = function()
      require("telescope").load_extension("fzf")
    end,
  },
  {
    "ahmedkhalf/project.nvim",
    dependencies = {
      "nvim-telescope/telescope.nvim",
    },
    keys = {
      {
        "<leader>fp",
        function()
          require("telescope").extensions.projects.projects()
        end,
        desc = "Find project files",
      },
    },
    init = function()
      require("project_nvim").setup()
    end,
    config = function()
      require("telescope").load_extension("projects")
    end,
  },
  {
    "nvim-telescope/telescope-file-browser.nvim",
    dependencies = {
      "nvim-telescope/telescope.nvim",
    },
    build = "make",
    keys = {
      {
        "<leader>fb",
        "<cmd>Telescope file_browser path=%:p:h select_buffer=true<cr>",
        desc = "Find files (current buffer dir)",
      },
    },
    config = function()
      require("telescope").load_extension("file_browser")
    end,
  },

  -- add symbols-outline
  -- {
  --   "simrat39/symbols-outline.nvim",
  --   cmd = "SymbolsOutline",
  --   keys = { { "<leader>cs", "<cmd>SymbolsOutline<cr>", desc = "Symbols Outline" } },
  --   opts = {
  --     -- add your options that should be passed to the setup() function here
  --     position = "right",
  --   },
  -- },

  {
    "neovim/nvim-lspconfig",
    dependencies = {
      {
        "SmiteshP/nvim-navbuddy",
        dependencies = {
          "SmiteshP/nvim-navic",
          "MunifTanjim/nui.nvim"
        },
        opts = { lsp = { auto_attach = true } },
      },
    },
  },
}
