-- Render markdown inline in Neovim
return {
  'MeanderingProgrammer/render-markdown.nvim',
  ft = { 'markdown' },
  dependencies = { 'nvim-treesitter/nvim-treesitter', 'nvim-tree/nvim-web-devicons' },
  opts = {
    code = {
      sign = false,
      width = 'block',
      right_pad = 1,
    },
    heading = {
      sign = false,
      -- Uses default icons which provide nice visual hierarchy
      -- H1 is larger/bolder than H2, etc.
    },
  },
  keys = {
    {
      '<leader>mr',
      '<cmd>RenderMarkdown toggle<cr>',
      desc = 'Toggle Markdown Render',
    },
  },
}
