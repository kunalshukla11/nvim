return {
  "nvim-treesitter/nvim-treesitter",
  opts = function(_, opts)
    -- add tsx and treesitter
    vim.list_extend(opts.ensure_installed, {

      "json",
      "javascript",
      "typescript",
      "tsx",
      "yaml",
      "html",
      "css",
      "prisma",
      "markdown",
      "markdown_inline",
      "svelte",
      "graphql",
      "bash",
      "lua",
      "vim",
      "dockerfile",
      "gitignore",
      "query",
      "vimdoc",
      "c",
      "java",
      "sql",
      "terraform",
      "hcl",
    })
    -- Add incremental selection configuration
    opts.incremental_selection = {
      enable = true,
      keymaps = {
        node_incremental = "v", -- Increment to the upper named parent
        node_decremental = "V", -- Decrement to the previous node
      },
    }
  end,
}
