return {
  {
    'sainnhe/gruvbox-material',
    lazy = false,
    priority = 1000,

    -- config = function()
    -- vim.o.background = 'dark'
    -- vim.g.gruvbox_material_background = 'hard'
    -- vim.g.gruvbox_material_foreground = 'mix'
    -- vim.g.gruvbox_material_better_performance = 1
    -- --vim.g.gruvbox_material_enable_italic = 1
    -- vim.g.gruvbox_material_enable_bold = 1
    -- vim.cmd.colorscheme 'gruvbox-material'
    -- end,
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
    lazy = false,
    config = function()
      local themes = { 'carbonfox', 'nightfox', 'dayfox', 'dawnfox', 'duskfox', 'nordfox', 'terafox' }
      local random_theme = themes[math.random(#themes)]
      vim.cmd.colorscheme(random_theme)
    end,
  },

  {
    'catppuccin/nvim',
    lazy = false,
    priority = 1000,
    -- config = function()
    --   local flavours = { 'latte', 'frappe', 'macchiato', 'mocha' }
    --   local random_flavour = flavours[math.random(#flavours)]
    --   require('catppuccin').setup {
    --     flavour = random_flavour,
    --   }
    --   vim.cmd.colorscheme 'catppuccin'
    -- end,
  },

  { -- You can easily change to a different colorscheme.
    -- Change the name of the colorscheme plugin below, and then
    -- change the command in the config to whatever the name of that colorscheme is.
    --
    -- If you want to see what colorschemes are already installed, you can use `:Telescope colorscheme`.
    'folke/tokyonight.nvim',
    priority = 1000, -- Make sure to load this before all the other start plugins.
    config = function()
      ---@diagnostic disable-next-line: missing-fields
      require('tokyonight').setup {
        styles = {
          comments = { italic = false }, -- Disable italics in comments
        },
      }

      -- Load the colorscheme here.
      -- Like many other themes, this one has different styles, and you could load
      -- any other, such as 'tokyonight-storm', 'tokyonight-moon', or 'tokyonight-day'.

      -- vim.cmd.colorscheme 'tokyonight-night'

      -- local tokyothemes = { 'tokyonight-storm', 'tokyonight-moon', 'tokyonight-night' }
      -- local random_theme = tokyothemes[math.random(#tokyothemes)]
      -- vim.cmd.colorscheme(random_theme)
    end,
  },
}
