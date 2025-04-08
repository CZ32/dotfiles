return {
  "nvim-telescope/telescope.nvim",
  tag = "0.1.8",
  lazy = false,
  dependencies = {
    "nvim-lua/plenary.nvim",
    {
      "nvim-telescope/telescope-fzf-native.nvim",
      build = "cmake -S. -Bbuild -DCMAKE_POLICY_VERSION_MINIMUM=3.5 -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release",
    },
  },
  config = function()
    require("telescope").setup({
      defaults = {
        layout_config = {
          prompt_position = "top",
        },
        sorting_strategy = "ascending", -- Optional: works well with prompt at the top
      },
    })
    require("telescope").load_extension("fzf")
    vim.keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>", { desc = "Find files using Telescope" })
  end,
}
