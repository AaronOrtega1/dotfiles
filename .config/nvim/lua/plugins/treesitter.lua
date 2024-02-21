return {

  -- add more treesitter parsers, used for e.g. theming and other plugins
  -- https://github.com/nvim-treesitter/nvim-treesitter#supported-languages
  {
    "nvim-treesitter/nvim-treesitter",
    -- opts will be merged with the parent spec
    opts = {
      ensure_installed = {
        "c",
        "comment",
        "css",
        "git_config",
        "git_rebase",
        "html",
        "http",
        "javascript",
        "json",
        "lua",
        "make",
        "python",
        "typescript",
        "vim",
        "yaml",
      },
      highlight = {
        enable = true,
      },
      rainbow = {
        enable = true,
      },
    },
  },

  -- https://github.com/nvim-treesitter/nvim-treesitter-context
  {
    "nvim-treesitter/nvim-treesitter-context",
    dependencies = { "nvim-treesitter/nvim-treesitter" },
  },
}
