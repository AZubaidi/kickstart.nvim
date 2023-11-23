return  {
  -- No need to copy this inside `setup()`. Will be used automatically. 
  'echasnovski/mini.files',
  version = '*',
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    require("mini.files").setup()
    vim.keymap.set('n', '-', ':lua require("mini.files").open(vim.api.nvim_buf_get_name(0), true)<CR>', { desc = 'Open mini.files in current directory' })
    vim.keymap.set('n', '<leader>fe', ':lua require("mini.files").open(vim.loop.cwd(), true)<CR>', { desc = 'Open mini.files in root directory' })
  end
}
