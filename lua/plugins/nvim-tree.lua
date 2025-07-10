return {
  "nvim-tree/nvim-tree.lua",
  dependencies = {
    "nvim-tree/nvim-web-devicons", -- File icons
  },
  config = function()
    -- Disable netrw (built-in file explorer)
    vim.g.loaded_netrw = 1
    vim.g.loaded_netrwPlugin = 1

    require("nvim-tree").setup({
      -- Basic settings
      view = {
        width = 30,              -- Width of tree
        side = "left",           -- Left side (como VSCode)
      },
      renderer = {
        group_empty = true,      -- Group empty folders
        highlight_git = true,    -- Highlight git changes
        icons = {
          show = {
            file = true,
            folder = true,
            folder_arrow = true,
            git = true,
          },
        },
      },
      filters = {
        dotfiles = false,        -- Show hidden files
        git_ignored = false,     -- Show git ignored files
      },
      git = {
        enable = true,
        ignore = false,
      },
      actions = {
        open_file = {
          quit_on_open = false,  -- Don't close tree when opening file
        },
      },
    })

    -- Keymaps
    local map = vim.keymap.set
    map('n', '<leader>e', ':NvimTreeToggle<CR>', { desc = 'toggle file explorer' })
  end,
} 