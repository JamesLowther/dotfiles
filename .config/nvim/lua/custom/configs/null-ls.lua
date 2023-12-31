local augroup = vim.api.nvim_create_augroup("LspFormatting", {})
local null_ls = require("null-ls")

local opts = {
  sources = {
    -- Shared
    null_ls.builtins.formatting.prettierd,
    -- Python
    null_ls.builtins.formatting.black,
    null_ls.builtins.diagnostics.mypy,
    null_ls.builtins.diagnostics.ruff,
    -- Terraform
    null_ls.builtins.formatting.terraform_fmt,
    null_ls.builtins.diagnostics.tfsec,
  },
  on_attach = function (client, bufnr)
    if client.supports_method("textDocument/formatting") then
      vim.api.nvim_clear_autocmds({
        group = augroup,
        buffer = bufnr,
      })
      vim.api.nvim_create_autocmd("BufWritePre", {
        group = augroup,
        buffer = bufnr,
        callback = function ()
            vim.lsp.buf.format({ async = false })
        end,
      })
    end
  end,
}

return opts

