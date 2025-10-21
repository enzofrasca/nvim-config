return {
  "christoomey/vim-tmux-navigator",
  cmd = {
    "TmuxNavigateLeft",
    "TmuxNavigateDown",
    "TmuxNavigateUp",
    "TmuxNavigateRight",
    "TmuxNavigatePrevious",
    "TmuxNavigatorProcessList",
  },
   keys = {
     { "<c-o>h", "<cmd><C-U>TmuxNavigateLeft<cr>" },
     { "<c-o>j", "<cmd><C-U>TmuxNavigateDown<cr>" },
     { "<c-o>k", "<cmd><C-U>TmuxNavigateUp<cr>" },
     { "<c-o>l", "<cmd><C-U>TmuxNavigateRight<cr>" },
     { "<c-o>\\", "<cmd><C-U>TmuxNavigatePrevious<cr>" },
   },
}
