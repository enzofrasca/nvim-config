return {
  "stevearc/oil.nvim",
  lazy = false,
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    vim.g.loaded_netrw = 1
    vim.g.loaded_netrwPlugin = 1
    require("oil").setup({
      default_file_explorer = true,
    })
  end,
  keys = {
    { "<leader>e", "<cmd>Oil<CR>", desc = "Open oil file explorer" },
  },
}