-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information

-- Tab setting
vim.o.tabstop = 4
vim.o.shiftwidth = 4
vim.o.expandtab = true
vim.o.softtabstop = 4

-- 'Ctrl ]'
vim.o.jumpoptions = 'stack'

return {
  -- Diagnostic keymaps
  vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float, { desc = 'Show diagnostic [E]rror messages' }),

  -- gcc to comment
  { 'numToStr/Comment.nvim', opts = {} },

  -- nvim transparent
  { 'xiyaowong/transparent.nvim' },

  -- hop(easy motion)
  {
    'smoka7/hop.nvim',
    version = '*',
    config = function()
      require('hop').setup { keys = 'etovxqpdygfblzhckisuran' }

      local hop = require 'hop'
      local directions = require('hop.hint').HintDirection
      vim.keymap.set('', 'f', function()
        hop.hint_char1 { direction = directions.AFTER_CURSOR, current_line_only = true }
      end, { remap = true })
      vim.keymap.set('', 'F', function()
        hop.hint_char1 { direction = directions.BEFORE_CURSOR, current_line_only = true }
      end, { remap = true })

      vim.keymap.set('n', '<leader>j', ':HopChar2MW<cr>')

      vim.keymap.set('n', '<leader>k', ':HopWord<cr>')
    end,
  },

  -- leetcode.nvim
  {
    'kawre/leetcode.nvim',
    build = ':TSUpdate html', -- if you have `nvim-treesitter` installed
    dependencies = {
      'nvim-telescope/telescope.nvim',
      -- "ibhagwan/fzf-lua",
      'nvim-lua/plenary.nvim',
      'MunifTanjim/nui.nvim',
    },
    opts = {
      lang = 'cpp',
    },
  },

  -- MarkdownPreview
  {
    'iamcco/markdown-preview.nvim',
    cmd = { 'MarkdownPreviewToggle', 'MarkdownPreview', 'MarkdownPreviewStop' },
    build = 'cd app && yarn install',
    init = function()
      vim.g.mkdp_filetypes = { 'markdown' }
    end,
    ft = { 'markdown' },
  },

  -- vimtex plugin
  {
    'lervag/vimtex',
    lazy = false,
    -- tag = "v2.15", -- uncomment to pin to a specific release

    init = function()
      vim.g.vimtex_view_method = 'sioyek'
      vim.g.vimtex_quickfix_mode = 0
      vim.g.vimtex_compiler_method = 'latexmk'
      vim.g.vimtex_compiler_latexmk = {
        executable = 'latexmk',
        options = {
          '-xelatex',
          '-verbose',
          '-file-line-error',
          '-synctex=1',
          '-interaction=nonstopmode',
        },
      }
    end,
  },

  -- rust auto fmt
  {
    'rust-lang/rust.vim',
    ft = 'rust',
    init = function()
      vim.g.rustfmt_autosave = 1
    end,
  },

  -- rust code suggestions and code completion and inline error
  {
    'mrcjkb/rustaceanvim',
    version = '^6', -- Recommended
    lazy = false, -- This plugin is already lazy
  },
}
