return {
  "folke/noice.nvim",
  config = function()
    require("noice").setup({
      -- Ajusta las notificaciones
      notify = {
        enabled = false, -- Desactiva las notificaciones globales
      },
      -- Puedes especificar qué eventos silenciar, como actualizaciones de lazy.nvim
      lsp = {
        -- Desactivar notificaciones de progreso de LSP
        progress = {
          enabled = false,
        },
        hover = {
          enabled = false, -- Desactiva mensajes flotantes del hover
        },
        signature = {
          enabled = false, -- Desactiva sugerencias de firmas
        },
      },
      -- Personaliza las notificaciones que te interesen
      presets = {
        bottom_search = false, -- Desactiva la barra de búsqueda en la parte inferior
        command_palette = false, -- Desactiva el comando palette
        long_message_to_split = true, -- Muestra los mensajes largos en un split en lugar de notificaciones
      },
    })
  end,
}
