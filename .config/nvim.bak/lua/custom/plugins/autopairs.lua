-- from https://github.com/nvim-lua/kickstart.nvim#example-adding-an-autopairs-plugin

return {
  "windwp/nvim-autopairs",
  config = function()
    require("nvim-autopairs").setup {}
  end,
}
