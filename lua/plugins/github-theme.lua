return {
  "projekt0n/github-nvim-theme",
  priority = 1000, -- Загружаем тему первой
  config = function()
    require("github-theme").setup({
      options = {
        transparent = false, -- прозрачность
      },
    })
    vim.cmd.colorscheme("github_light") -- Устанавливаем светлую тему GitHub
  end,
}

