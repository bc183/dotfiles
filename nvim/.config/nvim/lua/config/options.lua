-- [[ Setting options ]]
-- See `:help vim.o`

-- Set <space> as the leader key
-- NOTE: Must happen before plugins are loaded (otherwise wrong leader will be used)
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- Set to true if you have a Nerd Font installed and selected in the terminal
vim.g.have_nerd_font = true

-- Disable netrw at the very start (strongly advised for neo-tree)
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- Set termguicolors to enable highlight groups
vim.opt.termguicolors = true

-- Clipboard - disabled by default (from nvim.bak preference)
vim.o.clipboard = ''

-- Cursor always thick (from nvim.bak)
vim.o.guicursor = ''

-- Disable search highlighting (from nvim.bak preference)
vim.o.hlsearch = false

-- Line numbers
vim.o.number = true
vim.o.relativenumber = true -- From nvim.bak preference

-- Enable mouse mode
vim.o.mouse = 'a'

-- Don't show the mode, since it's already in the status line
vim.o.showmode = false

-- Enable break indent
vim.o.breakindent = true

-- Save undo history
vim.o.undofile = true

-- Case-insensitive searching UNLESS \C or capital letters in search term
vim.o.ignorecase = true
vim.o.smartcase = true

-- Keep signcolumn on by default
vim.o.signcolumn = 'yes'

-- Decrease update time
vim.o.updatetime = 250

-- Decrease mapped sequence wait time
vim.o.timeoutlen = 300

-- Configure how new splits should be opened
vim.o.splitright = true
vim.o.splitbelow = true

-- Tab settings (from nvim.bak preference)
vim.o.tabstop = 4
vim.o.shiftwidth = 4
vim.o.softtabstop = 4
vim.o.expandtab = true
vim.o.smartindent = true
vim.o.autoindent = true

-- Sets how neovim will display certain whitespace characters in the editor.
vim.o.list = true
vim.opt.listchars = { tab = '» ', trail = '·', nbsp = '␣' }

-- Preview substitutions live, as you type!
vim.o.inccommand = 'split'

-- Show which line your cursor is on
vim.o.cursorline = true

-- Minimal number of screen lines to keep above and below the cursor.
vim.o.scrolloff = 10

-- Confirm before failing operations due to unsaved changes
vim.o.confirm = true

-- Set completeopt to have a better completion experience
vim.o.completeopt = 'menuone,noselect'

-- Copilot options (from nvim.bak)
vim.g.copilot_assume_mapped = true
vim.g.copilot_no_tab_map = true

-- Enable project-local configuration files (.nvim.lua, .nvimrc, .exrc)
vim.o.exrc = true
