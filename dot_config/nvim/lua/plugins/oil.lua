return {
  'stevearc/oil.nvim',
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  config = function()
    require('oil').setup {
      default_file_explorer = true,
    }

    vim.keymap.set('n', '-', '<cmd>Oil<cr>', { desc = 'Open parent dir' })
    vim.keymap.set('n', '<leader>-', require('oil').toggle_float)
  end,
}
