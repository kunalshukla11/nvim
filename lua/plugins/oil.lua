return {
  -- other plugins...
  {
    "stevearc/oil.nvim",
    config = function()
      require("oil").setup({
        columns = { "icon" }, -- Show icons next to files
        default_file_explorer = false, -- Keep Neo-tree as default, don’t auto-open oil.nvim
        restore_win_options = true,
        skip_confirm_for_simple_edits = false,
      })
    end,
  },
}

