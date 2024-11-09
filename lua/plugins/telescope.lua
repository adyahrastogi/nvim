return {
    'nvim-telescope/telescope.nvim', tag = '0.1.8',
      dependencies = { 'nvim-lua/plenary.nvim' },
      config = function()
        local builtin = require("telescope.builtin")
	-- fuzzy find files, ctrl+p
        vim.keymap.set('n', '<C-p>', builtin.find_files, {})
	-- grep (search for words) is leader (space for me) + fg
      	vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
	end
    }
