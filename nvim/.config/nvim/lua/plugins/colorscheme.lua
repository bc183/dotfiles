-- Colorscheme configuration
return {
  {
    'folke/tokyonight.nvim',
    priority = 1000,
    enabled = false, -- Disabled in favor of gruber-darker
    config = function()
      ---@diagnostic disable-next-line: missing-fields
      require('tokyonight').setup {
        styles = {
          comments = { italic = false },
        },
      }
      vim.cmd.colorscheme 'tokyonight-night'
    end,
  },
  {
    'blazkowolf/gruber-darker.nvim',
    priority = 1000,
    config = function()
      require('gruber-darker').setup {
        bold = true,
        italic = {
          strings = true,
          comments = true,
          operators = true,
          folds = true,
        },
      }
      vim.cmd.colorscheme 'gruber-darker'
    end,
  },
}
