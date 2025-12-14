-- GitHub Copilot
return {
  'github/copilot.vim',
  event = 'InsertEnter',
  config = function()
    -- Copilot configuration (from nvim.bak)
    vim.g.copilot_assume_mapped = true
    vim.g.copilot_no_tab_map = true

    -- Accept copilot suggestion with <C-j>
    vim.keymap.set('i', '<C-j>', 'copilot#Accept("<CR>")', {
      expr = true,
      replace_keycodes = false,
      silent = true,
    })

    -- Additional copilot keymaps
    vim.keymap.set('i', '<C-]>', '<Plug>(copilot-dismiss)', { silent = true })
    vim.keymap.set('i', '<C-[>', '<Plug>(copilot-previous)', { silent = true })
    vim.keymap.set('i', '<C-\\>', '<Plug>(copilot-suggest)', { silent = true })
  end,
}
