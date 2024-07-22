return {
  "williamboman/mason.nvim",
  opts = function(_, opts)
    vim.list_extend(opts.ensure_installed, {
      "luacheck",
      "tailwindcss-language-server",
      "typescript-language-server",
      "css-lsp",
      "eslint-lsp",
      "html-lsp",
      "json-lsp",
      "prettier",
      "shellcheck",
      "shfmt",
      "stylua",
      "pyright",
      "black",
      "ruff-lsp",
      "mypy",
      "debugpy",
    })
  end,
}
