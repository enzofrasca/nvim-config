 return {
  {
    'rebelot/kanagawa.nvim',
    priority = 1000,
    config = function()
      require('kanagawa').setup({
        theme = 'wave',
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
