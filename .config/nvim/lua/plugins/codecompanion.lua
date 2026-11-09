return {
  {
    "olimorris/codecompanion.nvim",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-treesitter/nvim-treesitter",
      { "MeanderingProgrammer/render-markdown.nvim", ft = { "markdown", "codecompanion" } },
      { "stevearc/dressing.nvim", opts = {} },
    },
    config = function()
      require("codecompanion").setup({
        strategies = {
          chat = {
            adapter = "cline_cli", -- Change to "anthropic", "openai", "ollama", etc.
          },
        },
      })
    end,
    keys = {
      { "<leader>cc", "<cmd>CodeCompanionChat Toggle<CR>", mode = { "n", "v" }, desc = "CodeCompanion: Toggle Chat" },
      { "<leader>ci", "<cmd>CodeCompanion<CR>", mode = { "n", "v" }, desc = "CodeCompanion: Inline Prompt" },
      { "<leader>ca", "<cmd>CodeCompanionActions<CR>", mode = { "n", "v" }, desc = "CodeCompanion: Actions" },
    },
  },
}
