return {
  {
    'sainnhe/gruvbox-material',
    lazy = false,
    priority = 1000,

    config = function()
      vim.o.background = 'dark'
      vim.g.gruvbox_material_background = 'hard'
      vim.g.gruvbox_material_foreground = 'mix'
      vim.g.gruvbox_material_better_performance = 1
      --vim.g.gruvbox_material_enable_italic = 1
      vim.g.gruvbox_material_enable_bold = 1
      vim.cmd.colorscheme 'gruvbox-material'
    end,
  },

  {
    'sainnhe/everforest',
    lazy = false,
    priority = 1000,

    -- config = function()
    --   vim.o.background = 'dark'
    --   vim.g.everforest_background = 'medium'
    --   vim.g.everforest_better_performance = 1
    --   -- vim.g.everforest_enable_italic = 1
    --   vim.g.everforest_enable_bold = 1
    --   vim.cmd.colorscheme 'everforest'
    -- end,
  },

  {
    'EdenEast/nightfox.nvim',

    -- init = function()
    --   vim.cmd 'colorscheme carbonfox'
    --   vim.cmd 'colorscheme nightfox'
    --   vim.cmd 'colorscheme dayfox'
    --   vim.cmd 'colorscheme dawnfox'
    --   vim.cmd 'colorscheme duskfox'
    --   vim.cmd 'colorscheme nordfox'
    --   vim.cmd 'colorscheme terafox'
    -- end,
  },
}
