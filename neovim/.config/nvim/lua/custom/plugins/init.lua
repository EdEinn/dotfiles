-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
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
      vim.g.vimtex_view_method = 'skim'
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

  -- rust crates version info
  {
    'saecki/crates.nvim',
    ft = { 'toml' },
    config = function()
      require('crates').setup {
        completion = {
          cmp = {
            enabled = true,
          },
        },
      }
      require('cmp').setup.buffer {
        sources = { { name = 'crates' } },
      }
    end,
  },

  -- rust code suggestions and code completion and inline error
  {
    'mrcjkb/rustaceanvim',
    version = '^5', -- Recommended
    lazy = false, -- This plugin is already lazy
    config = function()
      -- RustaceanVim setup for Rust debugging
      local mason_registry = require 'mason-registry'
      local codelldb = mason_registry.get_package 'codelldb'
      local extension_path = codelldb:get_install_path() .. '/extension/'
      local codelldb_path = extension_path .. 'adapter/codelldb'
      local liblldb_path = extension_path .. 'lldb/lib/liblldb.dylib'
      local cfg = require 'rustaceanvim.config'

      vim.g.rustaceanvim = {
        dap = {
          adapter = cfg.get_codelldb_adapter(codelldb_path, liblldb_path),
        },
      }
    end,
  },
}
