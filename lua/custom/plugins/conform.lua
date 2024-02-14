return {
  'stevearc/conform.nvim',
  event = 'BufWritePre',
  config = function()
    require('conform').setup {
      lsp_fallback = true,

      formatters_by_ft = {
        lua = { 'stylua' },

        javascript = { 'prettier' },
        css = { 'prettier' },
        html = { 'prettier' },
        json = { 'prettier' },
        markdown = { 'prettier' },
        yaml = { 'prettier' },

        sh = { 'shfmt' },
        go = { 'gofumpt' },
      },

      -- adding same formatter for multiple filetypes can look too much work for some
      -- instead of the above code you could just use a loop! the config is just a table after all!

      format_on_save = {
        -- These options will be passed to conform.format()
        timeout_ms = 500,
        lsp_fallback = true,
      },
    }
  end,
}
