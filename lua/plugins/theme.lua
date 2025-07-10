return {
  {
    'ellisonleao/gruvbox.nvim',
    priority = 1000,
    config = function()
      -- Detecta se deve usar transparência
      local function should_use_transparency()
        -- Se estiver no Windows, desabilita transparência por padrão
        if vim.fn.has('win32') == 1 or vim.fn.has('win64') == 1 then
          return false
        end
        
        -- Detecta terminais que suportam bem transparência
        local term = os.getenv('TERM_PROGRAM') or os.getenv('TERMINAL_EMULATOR') or ''
        local supported_terms = {
          'iTerm.app',
          'Terminal.app', 
          'Alacritty',
          'kitty',
          'WezTerm',
        }
        
        for _, supported in ipairs(supported_terms) do
          if string.find(term:lower(), supported:lower()) then
            return true
          end
        end
        
        -- Se não detectou um terminal específico, usa transparência no macOS/Linux
        return vim.fn.has('macunix') == 1 or vim.fn.has('unix') == 1
      end

      require('gruvbox').setup({
        transparent_mode = should_use_transparency(),
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
