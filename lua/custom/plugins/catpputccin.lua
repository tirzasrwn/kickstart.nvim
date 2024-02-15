return {
  'catppuccin/nvim',
  lazy = false,
  name = 'catppuccin',
  priority = 1000,
  config = function()
    require('catppuccin').setup {
      flavour = 'macchiato',
      transparent_background = true,
      integrations = {
        fidget = false,
      },
    }
    vim.cmd.colorscheme 'catppuccin'
  end,
}
