return {
  -- Catppuccin theme
  'catppuccin/nvim',
  priority = 1000,
  config = function()
    vim.cmd.colorscheme 'catppuccin-mocha'
  end,
}
