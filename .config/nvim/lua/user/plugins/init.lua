return {
  -- Colorscheme/theme
  ["folke/todo-comments.nvim"] = {
    requires = "nvim-lua/plenary.nvim",
    config = function()
      require("todo-comments").setup(require "user.plugins.todo")
    end,
  },

  ["xiyaowong/nvim-transparent"] = {
    config = function()
      require("transparent").setup(require "user.plugins.transparent")
    end,
  },

  "qbbr/vim-twig",
  {
    "ggandor/leap.nvim",
  },
  'mbbill/undotree',
  {
    "Mofiqul/dracula.nvim",
    as = "dracula",
    config = function()
      require('dracula').setup({})
    end,
  },
  --   config = function()
  --   end,
  -- },
  --
  ["yamatsum/nvim-nonicons"] = {
    requires = { "kyazdani42/nvim-web-devicons" },
  },
  {
    "catppuccin/nvim",
    as = "catppuccin",
    config = function()
      require("catppuccin").setup {}
    end,
  },
  { "ellisonleao/glow.nvim", config = function() require("glow").setup() end },
  {
    'chipsenkbeil/distant.nvim',
    config = function()
      require('distant').setup {
        -- Applies Chip's personal settings to every machine you connect to
        --
        -- 1. Ensures that distant servers terminate with no connections
        -- 2. Provides navigation bindings for remote directories
        -- 3. Provides keybinding to jump into a remote file's parent directory
        ['*'] = require('distant.settings').chip_default()
      }
    end
  }
}
