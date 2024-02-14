-- disable theme
return {
	-- Theme inspired by Atom
	'navarasu/onedark.nvim',
	enable = false,
	priority = 1,
	lazy = true,
	config = function()
		require('onedark').setup {
			-- Set a style preset. 'dark' is default.
			style = 'dark', -- dark, darker, cool, deep, warm, warmer, light
		}
		require('onedark').load()
	end,
}
