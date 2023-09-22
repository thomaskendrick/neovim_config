return {
  "ahmedkhalf/project.nvim",
  opts = {
    detection_methods = { "pattern", "lsp" },
    patterns = { "package.json", ".git" },
  },
  event = "VeryLazy",
  config = function(_, opts)
    require("project_nvim").setup(opts)
    require("telescope").load_extension("projects")
  end,
  keys = {
    { "<leader>fp", "<Cmd>Telescope projects<CR>", desc = "Projects" },
  },
}
