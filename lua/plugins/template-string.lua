return {
  {
    "axelvc/template-string.nvim",
    ft = { "javascript", "typescript", "typescriptreact", "javascriptreact", "vue", "svelte", "python", "cs", "html" },
    config = function()
      require("template-string").setup({
        filetypes = { "javascript", "typescript", "typescriptreact", "javascriptreact", "vue", "svelte", "python", "cs", "html" },
        jsx_brackets = true,
        remove_template_string = false,
        restore_quotes = { normal = [[']], jsx = [["]] },
      })

      vim.keymap.set('n', '<leader>ts', require('template-string').toggle, { noremap = true, silent = true })
      -- Keybind to toggle template string
    end,
  },
}