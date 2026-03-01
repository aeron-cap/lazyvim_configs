return {
  "neovim/nvim-lspconfig",
  opts = {
    servers = {
      tinymist = {
        keys = {
          {
            "<leader>cP",
            function()
              local buf_name = vim.api.nvim_buf_get_name(0)
              local file_name = vim.fn.fnamemodify(buf_name, ":t")
              LazyVim.lsp.execute({
                title = "Pin Main",
                filter = "tinymist",
                command = "tinymist.pinMain",
                arguments = { buf_name },
              })
              LazyVim.info("Tinymist: Pinned " .. file_name)
            end,
            desc = "Pin main file",
          },
        },
        single_file_support = true, -- Fixes LSP attachment in non-Git directories
        settings = {
          formatterMode = "typstyle",
        },
      },
    },
  },
}
