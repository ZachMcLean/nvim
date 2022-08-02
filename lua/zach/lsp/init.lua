local status_ok, _ = pcall(require, "lspconfig")
if not status_ok then
    return
end

require("zach.lsp.lsp-installer")
require("zach.lsp.handlers").setup()
