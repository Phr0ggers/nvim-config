local telescope = require("telescope")

telescope.setup({
  defaults = {
    path_display = { "smart" },

    layout_strategy = "horizontal",

    layout_config = {
      prompt_position = "top",
    },

    sorting_strategy = "ascending",
  },

  extensions = {
    ["ui-select"] = {
      require("telescope.themes").get_dropdown(),
    },
  },
})

pcall(telescope.load_extension, "fzf")
pcall(telescope.load_extension, "ui-select")
