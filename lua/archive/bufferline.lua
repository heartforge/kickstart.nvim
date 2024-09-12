return {
  'akinsho/bufferline.nvim',
  version = '*',
  lazy = false,
  dependencies = 'nvim-tree/nvim-web-devicons',
  config = function()
    require('bufferline').setup {
      -- NOTE: These configs are to cycle between buffers
      vim.keymap.set('n', '<leader>]', '<cmd>BufferLineCycleNext<CR>', { desc = 'cycle to next buffer' }),
      vim.keymap.set('n', '<leader>[', '<cmd>BufferLineCyclePrev<CR>', { desc = 'cycle to prev buffer' }),
      options = {
        mode = 'buffers',
        indicator = {
          style = 'underline',
        },
        offsets = {
          {
            filetype = 'NvimTree',
            text = 'File Explorer',
            separator = true,
          },
        },
        close_icon = '',
        buffer_close_icon = '',
      },
    }
  end,
}
