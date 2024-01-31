local function map(mode, lhs, rhs, opts)
  local options = { noremap=true, silent=true }
  if opts then
    options = vim.tbl_extend('force', options, opts)
  end
  vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

vim.g.mapleader = ','

map('n','<c-w>',':w<cr>')
map('n', '<c-e>',':wq<cr>')
map('n', '<c-q>', ':q!<cr>')
map('n', '<leader>r', ':so %<cr>')
map('n', '<leader>/', ':nohl<cr>')

-- splitting
map('n', '<leader>ss',':split<cr>')
map('n', '<leader>th', '<c-w>t<c-w>K')
map('n', '<leader>tv', '<c-w>t<c-w>H')

-- move arround splits
map('n', '<C-h>', '<C-w>h')
map('n', '<C-j>', '<C-w>j')
map('n', '<C-k>', '<C-w>k')
map('n', '<C-l>', '<C-w>l')

-- buffer control
map('n', '<leader>nb',":bnext<cr>")
map('n', '<leader>pb', ':bprevious<cr>')
map('n', '<leader>db', ':bdelete<cr>')

-- Telescope & NvimTree
map('n', '<leader>fb', ':Telescope file_browser<cr>')
map('n', '<c-b>',':NvimTreeToggle<cr>')

map('n', '<leader>km', ':WhichKey<cr>')
