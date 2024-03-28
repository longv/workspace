return {
  "ThePrimeagen/harpoon",
  branch = "harpoon2",
  dependencies = {
    "nvim-lua/plenary.nvim",
  },
  config = function()
    local harpoon = require('harpoon')
    harpoon:setup({})

    vim.keymap.set("n", "<leader>ha", function() harpoon:list():append() end)
    vim.keymap.set("n", "<C-S-P>", function() harpoon:list():prev() end)
    vim.keymap.set("n", "<C-S-N>", function() harpoon:list():next() end)
    vim.keymap.set("n", "<leader>hf", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end)
  end
}
