local set = vim.keymap.set

-- Neo-tree File Explorer
set('n', '<leader>e', '<cmd>Neotree focus<cr>', { desc = 'Focus file Explorer' })
set('n', '<leader>te', '<cmd>Neotree toggle<cr>', { desc = 'File Explorer' })

-- Stay in indent mode
set('v', '<', '<gv', {desc = 'Unindent line'})
set('n', '>', '>gv', {desc = 'Indent line'})

-- Comment
set('n', '<leader>/', function() require('Comment.api').toggle.linewise.current() end, { desc = 'Comment line' })
set('v', '<leader>/', "<esc><cmd>lua require('Comment.api').toggle.linewise(vim.fn.visualmode())<cr>", { desc = 'Comment line' })

