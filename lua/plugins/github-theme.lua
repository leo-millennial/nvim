return {
	"catppuccin/nvim",
	name = "catppuccin",
	priority = 1000, -- Загружаем тему первой
	config = function()
		require("catppuccin").setup({
			flavour = "latte", -- Устанавливаем светлую тему (latte)
			background = {
				light = "latte",
				dark = "mocha",
			},
			transparent_background = false, -- Отключаем прозрачность
			show_end_of_buffer = false, -- Скрываем символы в конце буфера
			term_colors = false, -- Отключаем цвета терминала
			dim_inactive = {
				enabled = false, -- Отключаем затемнение неактивных окон
				shade = "dark",
				percentage = 0.15,
			},
			no_italic = true, -- Отключаем курсив
			no_bold = false, -- Оставляем жирный шрифт
			styles = {
				comments = { "italic" },
				conditionals = { "italic" },
				loops = {},
				functions = {},
				keywords = {},
				strings = {},
				variables = {},
				numbers = {},
				booleans = {},
				properties = {},
				types = {},
				operators = {},
			},
			color_overrides = {},
			custom_highlights = {},
			integrations = {
				cmp = true,
				gitsigns = true,
				nvimtree = true,
				telescope = true,
				notify = false,
				mini = false,
				-- Для получения полного списка интеграций, посетите:
				-- https://github.com/catppuccin/nvim#integrations
			},
		})

		-- Устанавливаем цветовую схему
		vim.cmd.colorscheme("catppuccin")
	end,
}
