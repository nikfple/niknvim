local set = vim.keymap.set

-- Neo-tree File Explorer
set('n', '<leader>e', '<cmd>Neotree focus<cr>', { desc = 'Focus file Explorer' })
set('n', '<leader>te', '<cmd>Neotree toggle<cr>', { desc = 'File Explorer' })

-- Stay in indent mode
set('v', '<', '<gv', { desc = 'Indent line' })
set('v', '>', '>gv', { desc = 'Unindent line' })
set('n', '<', '<<', { desc = 'Indent line' })
set('n', '>', '>>', { desc = 'Unindent line' })

-- Comment
set('n', '<leader>/', function() require('Comment.api').toggle.linewise.current() end, { desc = 'Comment line' })
set('v', '<leader>/', "<esc><cmd>lua require('Comment.api').toggle.linewise(vim.fn.visualmode())<cr>", { desc = 'Comment line' })

-- Navigate buffers
set('n', 'L', '<cmd>BufferLineCycleNext<cr>', { desc = 'Next buffer tab' })
set('n', 'H', '<cmd>BufferLineCyclePrev<cr>', { desc = 'Previous buffer tab' })

-- Telescope 
set('n', '<leader>ff', function() require("telescope.builtin").find_files() end, { desc = 'Files' })
set('n', '<leader>fw', function() require("telescope.builtin").find_live_grep() end, { desc = 'Words' })
