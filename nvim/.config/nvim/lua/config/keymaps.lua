-- [[ Basic Keymaps ]]
-- See `:help vim.keymap.set()`

local map = vim.keymap.set

-- Disable space in normal mode
map('n', '<Space>', '<Nop>', { desc = 'Disable space' })

-- General keymaps
map('n', '<leader>w', '<cmd>w<CR>', { desc = 'Save file' })
map('n', '<leader>q', '<cmd>q<CR>', { desc = 'Quit' })
map('n', '<leader>Q', '<cmd>qa<CR>', { desc = 'Quit all' })

-- Yank to system clipboard
map('n', '<leader>y', [["+y]], { desc = 'Copy to system clipboard' })
map('n', '<leader>Y', [["+Y]], { desc = 'Copy line to system clipboard' })
map('v', '<leader>y', [["+y]], { desc = 'Copy selection to system clipboard' })

-- Search and replace word under cursor
map('n', '<leader>s', [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]], { desc = 'Search and replace word under cursor' })

-- Make file executable
map('n', '<leader>x', '<cmd>!chmod +x %<CR>', { desc = 'Make file executable' })

-- Clear search highlighting
map('n', '<Esc>', '<cmd>nohlsearch<CR>', { desc = 'Clear highlights' })

-- Diagnostic keymaps
map('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })
map('n', '<leader>fd', function()
  vim.diagnostic.open_float { border = 'rounded' }
end, { desc = 'Floating diagnostic' })

-- Exit terminal mode with shortcut
map('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })

-- Insert mode keymaps
map('i', 'jj', '<Esc>', { desc = 'Exit insert mode' })

-- Copilot accept (from nvim.bak)
vim.api.nvim_set_keymap('i', '<C-j>', 'copilot#Accept("<CR>")', { silent = true, expr = true })

-- Window navigation
map('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
map('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
map('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
map('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })

-- Visual mode keymaps
map('v', 'J', ":m '>+1<CR>gv=gv", { desc = 'Move selection down' })
map('v', 'K', ":m '<-2<CR>gv=gv", { desc = 'Move selection up' })
map('v', '<C-d>', '<C-d>zz', { desc = 'Scroll down and center' })
map('v', '<C-u>', '<C-u>zz', { desc = 'Scroll up and center' })
map('v', 'n', 'nzzzv', { desc = 'Next search result centered' })
map('v', 'N', 'Nzzzv', { desc = 'Previous search result centered' })

-- Better indenting in visual mode
map('v', '<', '<gv', { desc = 'Indent left' })
map('v', '>', '>gv', { desc = 'Indent right' })

-- Visual block mode keymaps
map('x', '<leader>p', [["_dP]], { desc = 'Paste without losing register' })
