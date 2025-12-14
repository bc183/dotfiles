-- Neorg - modern org-mode alternative for Neovim
return {
  'nvim-neorg/neorg',
  lazy = false, -- Disable lazy loading as some `lazy.nvim` distributions set `lazy = true` by default
  version = '*', -- Pin Neorg to the latest stable release
  dependencies = { 'nvim-lua/plenary.nvim' },
  config = function()
    require('neorg').setup {
      load = {
        ['core.defaults'] = {}, -- Loads default behaviour
        ['core.concealer'] = {}, -- Adds pretty icons to your documents
        ['core.dirman'] = { -- Manages Neorg workspaces
          config = {
            workspaces = {
              notes = '~/notes',
            },
            default_workspace = 'notes',
          },
        },
        ['core.journal'] = {
          config = {
            strategy = 'flat',
            workspace = 'notes',
          },
        },
        ['core.summary'] = {}, -- For generating summaries and task views
        ['core.keybinds'] = {
          config = {
            hook = function(keybinds)
              -- Remap standard keybinds
              keybinds.remap_event('norg', 'n', '<C-Space>', 'core.qol.todo_items.todo.task_cycle')
              keybinds.remap_event('norg', 'n', '<leader>nt', 'core.qol.todo_items.todo.task_cycle')
              keybinds.remap_event('norg', 'n', '<leader>nd', 'core.qol.todo_items.todo.task_done')
              keybinds.remap_event('norg', 'n', '<leader>nu', 'core.qol.todo_items.todo.task_undone')
              keybinds.remap_event('norg', 'n', '<leader>np', 'core.qol.todo_items.todo.task_pending')
              keybinds.remap_event('norg', 'n', '<leader>nh', 'core.qol.todo_items.todo.task_on_hold')
              keybinds.remap_event('norg', 'n', '<leader>nc', 'core.qol.todo_items.todo.task_cancelled')
              keybinds.remap_event('norg', 'n', '<leader>nr', 'core.qol.todo_items.todo.task_recurring')
              keybinds.remap_event('norg', 'n', '<leader>ni', 'core.qol.todo_items.todo.task_important')
            end,
          },
        },
      },
    }

    -- Global keybindings for Neorg
    vim.keymap.set('n', '<leader>nn', '<cmd>Neorg index<cr>', { desc = 'Neorg Index' })
    vim.keymap.set('n', '<leader>nw', '<cmd>Neorg workspace<cr>', { desc = 'Neorg Workspace' })
    vim.keymap.set('n', '<leader>nj', '<cmd>Neorg journal today<cr>', { desc = 'Neorg Journal Today' })
    vim.keymap.set('n', '<leader>ny', '<cmd>Neorg journal yesterday<cr>', { desc = 'Neorg Journal Yesterday' })
    vim.keymap.set('n', '<leader>nm', '<cmd>Neorg journal tomorrow<cr>', { desc = 'Neorg Journal Tomorrow' })
    vim.keymap.set('n', '<leader>na', '<cmd>Neorg generate-workspace-summary<cr>', { desc = 'Neorg Task Summary/Agenda' })
  end,
}
