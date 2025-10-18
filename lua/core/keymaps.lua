local map = vim.keymap.set

map('n', '<C-h>', '<C-w><C-h>', { desc = 'move to left window' })
map('n', '<C-l>', '<C-w><C-l>', { desc = 'move to right window' })
map('n', '<C-j>', '<C-w><C-j>', { desc = 'move to bottom window' })
map('n', '<C-k>', '<C-w><C-k>', { desc = 'move to upper window' })

map('n', '<leader>w', ':w<CR>', { desc = 'save file' })
map('n', '<leader>q', ':q<CR>', { desc = 'close window' })

map('i', 'jj', '<Esc>', { desc = 'exit insert mode' })

map('v', 'p', '"_dP', { desc = 'paste without yanking' })

map('v', '<', '<gv', { desc = 'indent left' })
map('v', '>', '>gv', { desc = 'indent right' })

map('v', 'J', ":m '>+1<CR>gv=gv", { desc = 'move selection down' })
map('v', 'K', ":m '<-2<CR>gv=gv", { desc = 'move selection up' })

map('n', '<leader>nh', ':nohlsearch<CR>', { desc = 'clear search highlights' })

map('n', '<leader>bn', ':bnext<CR>', { desc = 'next buffer' })
map('n', '<leader>bp', ':bprevious<CR>', { desc = 'previous buffer' })
map('n', '<leader>bd', ':bdelete<CR>', { desc = 'delete buffer' })

map('n', '<C-d>', '<C-d>zz', { desc = 'scroll down and center' })
map('n', '<C-u>', '<C-u>zz', { desc = 'scroll up and center' })
map('n', 'n', 'nzzzv', { desc = 'next search result centered' })
map('n', 'N', 'Nzzzv', { desc = 'previous search result centered' })

map('n', '<leader>sv', '<C-w>v', { desc = 'split window vertically' })
map('n', '<leader>sh', '<C-w>s', { desc = 'split window horizontally' })
map('n', '<leader>se', '<C-w>=', { desc = 'make splits equal size' })
map('n', '<leader>sx', '<cmd>close<CR>', { desc = 'close current split' })
