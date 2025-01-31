local on_attach = require("nvchad.configs.lspconfig").on_attach
local on_init = require("nvchad.configs.lspconfig").on_init
local capabilities = require("nvchad.configs.lspconfig").capabilities

local lspconfig = require("lspconfig")

-- list of all servers configured.
lspconfig.servers = {
    "lua_ls",
    "html",
    "cssls",
    "emmet_ls",
    "jdtls",
    "pyright",
    "tailwindcss",
    "ts_ls",
    "rust_analyzer",
}

-- list of servers configured with default config.
local default_servers = { "rust_analyzer", "cssls", "pyright", "html", "ts_ls", "tailwindcss", "emmet_ls", "jdtls" }

-- lsps with default config
for _, lsp in ipairs(default_servers) do
    lspconfig[lsp].setup({
        on_attach = on_attach,
        on_init = on_init,
        capabilities = capabilities,
    })
end

-- configuring single server, example: typescript
-- lspconfig.ts_ls.setup {
--   on_attach = nvlsp.on_attach,
--   on_init = nvlsp.on_init,
--   capabilities = nvlsp.capabilities,
-- }
