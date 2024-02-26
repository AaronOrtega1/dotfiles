return {
  {
    "rcarriga/nvim-notify",
    opts = {
      timeout = 5000,
      render = "wrapped-compact",
    },
  },
  -- LazyGit integration with Telescope
  {
    "kdheepak/lazygit.nvim",
    keys = {
      {
        ";c",
        ":LazyGit<Return>",
        silent = true,
        noremap = true,
      },
    },
  },
}
