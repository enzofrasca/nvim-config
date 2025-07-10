return {
  'nvim-treesitter/nvim-treesitter',
  build = ':TSUpdate',
  config = function()
    require('nvim-treesitter.configs').setup({
      ensure_installed = { 'c', 'lua', 'vim', 'vimdoc', 'query', 'javascript', 'typescript', 'python', 'html', 'css', 'go', 'rust' },
      sync_install = false,
      auto_install = true,
      highlight = { enable = true },
      indent = { enable = true },
    })
  end,
}
