local enable_ai = function()
  local current_dir = vim.fn.getcwd()
  local code_path = "/home/aarondev/Documents/Code"

  -- Verificar si el directorio actual está dentro de /home/aarondev/Documents/Code
  local is_in_code_path = string.find(current_dir, code_path) == 1

  -- Si el directorio actual está dentro de /home/aarondev/Documents/Code, activar enable_ai
  if is_in_code_path then
    return true
  else
    return false
  end
end

return {
  -- custom config which piggybacks on the copilot extras in lazy.lua.
  {
    "zbirenbaum/copilot.lua",
    enabled = enable_ai(),
    cmd = "Copilot",
    build = ":Copilot auth",
    event = "InsertEnter",
    config = function()
      require("copilot").setup({
        panel = {
          enabled = true,
          auto_refresh = true,
        },
        suggestion = {
          enabled = true,
          auto_trigger = true,
          accept = true, -- disable built-in keymapping
        },
      })

      -- hide copilot suggestions when cmp menu is open
      -- to prevent odd behavior/garbled up suggestions
      local cmp_status_ok, cmp = pcall(require, "cmp")
      if cmp_status_ok then
        cmp.event:on("menu_opened", function()
          vim.b.copilot_suggestion_hidden = true
        end)

        cmp.event:on("menu_closed", function()
          vim.b.copilot_suggestion_hidden = false
        end)
      end
    end,
  },
}
