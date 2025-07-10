return {
  {
    'ellisonleao/gruvbox.nvim',
    priority = 1000,
    config = function()
      -- disable transparency on windows
      local transparent = not (vim.fn.has('win32') == 1 or vim.fn.has('win64') == 1)

      require('gruvbox').setup({
        transparent_mode = transparent,
      })
      vim.cmd.colorscheme('gruvbox')
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
          theme = 'gruvbox',
        },
      })
    end,
  },
}
