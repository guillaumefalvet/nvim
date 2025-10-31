return {
  "tris203/precognition.nvim",
  event = { "BufReadPost", "BufNewFile" }, -- lazy-load when opening or creating a file
  config = function()
    local precognition = require("precognition")

    precognition.setup({
      -- optional settings (you can leave this empty)
    })

    -- enable peek automatically
    vim.schedule(function()
      precognition.peek()
    end)

    -- add keybinding to toggle precognition
    vim.keymap.set("n", "<leader>pp", function()
      precognition.toggle()
    end, { desc = "Toggle Precognition" })
  end,
}
