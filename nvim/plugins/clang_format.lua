return {
	"rhysd/vim-clang-format",
	config = function()
		vim.g['clang_format#style_options'] = {
			BasedOnStyle = 'Google',
		}

		vim.api.nvim_set_keymap('n', '<leader>cf', ':ClangFormat<CR>', { noremap = true, silent = true })
		vim.api.nvim_set_keymap('v', '<leader>cf', ':ClangFormat<CR>', { noremap = true, silent = true })
	end
}
