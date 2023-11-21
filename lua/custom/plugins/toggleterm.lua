return {
    "akinsho/toggleterm.nvim",
    config = function()
      require("toggleterm").setup({
        open_mapping = [[<c-\>]],
        shade_terminals = true,
        shell = "powershell",
      })
    end,
    keys = {
      { [[<C-\>]] },
      {
        "<leader>tv",
        function()
          local count = vim.v.count1
          require("toggleterm").toggle(count, 10, vim.loop.cwd(), "vertical")
        end,
        desc = "ToggleTerm (vertical)",
      },
      {
        "<leader>th",
        function()
          local count = vim.v.count1
          require("toggleterm").toggle(count, 10, vim.loop.cwd(), "horizontal")
        end,
        desc = "ToggleTerm (horizontal)",
      },
    },
}
