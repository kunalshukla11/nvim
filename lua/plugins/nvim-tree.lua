return {
  "nvim-tree/nvim-tree.lua",
  version = "*",
  lazy = false,
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
  config = function()
    local function my_on_attach(bufnr)
      local api = require("nvim-tree.api")

      local function opts(desc)
        return { desc = "nvim-tree: " .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
      end

      -- default mappings
      api.config.mappings.default_on_attach(bufnr)

      -- custom mappings (Added this but does not override default mappings)
      vim.keymap.set("n", "<leader>ws", api.node.open.horizontal, opts("Open: Horizontal Split"))
      vim.keymap.set("n", "<leader>wv", api.node.open.vertical, opts("Open: Vertical Split"))
    end

    -- Nvim tree keymaps
    vim.keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>", { desc = "Toggle NvimTree" })
    vim.keymap.set("n", "<leader>ef", ":NvimTreeFindFile<CR>", { desc = "Find NvimTree file" })

    -- added a lua function to add to numbers

    require("nvim-tree").setup({
      on_attach = my_on_attach,
    })
  end,
}
