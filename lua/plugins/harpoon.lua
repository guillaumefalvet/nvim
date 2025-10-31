return {
    {
		"ThePrimeagen/harpoon",
		branch = "harpoon2",
		dependencies = { "nvim-lua/plenary.nvim" },
		config = function()
			local harpoon = require("harpoon")
			-- REQUIRED
			harpoon:setup()

			-- Basic keymaps
			vim.keymap.set("n", "<leader>a", function()
				harpoon:list():add()
			end, { desc = "Add file to harpoon" })
			vim.keymap.set("n", "<C-e>", function()
				harpoon.ui:toggle_quick_menu(harpoon:list())
			end)

			-- Navigation keymaps
			vim.keymap.set("n", "<C-i>", function()
				harpoon:list():select(1)
			end)
			vim.keymap.set("n", "<C-o>", function()
				harpoon:list():select(2)
			end)
			vim.keymap.set("n", "<C-p>", function()
				harpoon:list():select(3)
			end)
			vim.keymap.set("n", "<C-[>", function()
				harpoon:list():select(4)
			end)

			-- Toggle previous & next buffers stored within Harpoon list
			vim.keymap.set("n", "<C-S-P>", function()
				harpoon:list():prev()
			end)
			vim.keymap.set("n", "<C-S-N>", function()
				harpoon:list():next()
			end)
		end,
	},
}