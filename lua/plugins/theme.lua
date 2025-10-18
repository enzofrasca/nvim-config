return {
  {
    'rebelot/kanagawa.nvim',
    priority = 1000,
    config = function()
      -- disable transparency on windows
      local transparent = not (vim.fn.has('win32') == 1 or vim.fn.has('win64') == 1)

      require('kanagawa').setup({
        transparent_mode = transparent,
      })
      vim.cmd.colorscheme('kanagawa')
    end,
  },
  {
    'nvim-tree/nvim-web-devicons',
    lazy = true,
  },
  {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    config = function()
      require('lualine').setup({
        options = {
          theme = 'kanagawa',
        },
      })
    end,
  },
}
