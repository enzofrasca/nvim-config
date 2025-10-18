return {
  "stevearc/oil.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    require("oil").setup()
  end,
  keys = {
    { "<leader>e", "<cmd>Oil<CR>", desc = "Open oil file explorer" },
  },
}