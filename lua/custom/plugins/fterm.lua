return {
	"numToStr/FTerm.nvim",
	lazy = false,
	opts = {
		cmd = "/usr/bin/zsh",
	},
	config = function()
		require('FTerm').setup({
			cmd = '/usr/bin/zsh',
		})
		vim.keymap.set('n', '<A-i>', '<CMD>lua require("FTerm").toggle()<CR>')
		vim.keymap.set('t', '<A-i>', '<C-\\><C-n><CMD>lua require("FTerm").toggle()<CR>')
	end
}
