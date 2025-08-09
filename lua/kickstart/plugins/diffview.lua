return {
  -- Diffview
  {
    'sindrets/diffview.nvim',
    cmd = { 'DiffviewOpen', 'DiffviewFileHistory' },
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = function()
      local cb = require('diffview.config').diffview_callback
      require('diffview').setup {
        enhanced_diff_hl = true, -- Better highlighting
        keymaps = {
          view = {
            ['q'] = '<cmd>DiffviewClose<CR>',
          },
          file_panel = {
            ['q'] = '<cmd>DiffviewClose<CR>',
          },
        },
      }

      -- Keymaps
      vim.keymap.set('n', '<leader>do', '<cmd>DiffviewOpen<CR>', { desc = 'Diffview Open' })
      vim.keymap.set('n', '<leader>dh', '<cmd>DiffviewFileHistory<CR>', { desc = 'File History' })
    end,
  },
}
