return {
  {
    "iamcco/markdown-preview.nvim",
    build = function() vim.fn["mkdp#util#install"]() end,
    config = function()
      vim.g.mkdp_filetypes = { "markdown" }

      -- these do not work for some reason
      vim.g.mkdp_auto_start = 1
      vim.g.mkdp_markdown_css = "expand('~/Library/Application Support/abnerworks.Typora/themes/github.css')"
    end,
    ft = { "markdown" },
  }
}
