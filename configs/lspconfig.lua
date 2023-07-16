local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities

local lspconfig = require "lspconfig"
local util = require "lspconfig/util"

-- if you just want default config for the servers then put them in a table
local servers = {
  "html",
  "tailwindcss",
  "cssls",
  "denols",
  "tsserver",
  "clangd",
  "svelte",
  "zls",
  "prismals",
}

for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = on_attach,
    capabilities = capabilities,
  }
end

lspconfig.cssls.setup {
  on_attach = on_attach,
  settings = {
    css = {
      validate = true,
      lint = {
        unknownAtRules = "ignore",
      },
    },
    scss = {
      validate = true,
      lint = {
        unknownAtRules = "ignore",
      },
    },
    less = {
      validate = true,
      lint = {
        unknownAtRules = "ignore",
      },
    },
  },
}

lspconfig.denols.setup {
  on_attach = on_attach,
  root_dir = lspconfig.util.root_pattern("deno.json", "deno.jsonc"),
}

lspconfig.tsserver.setup {
  on_attach = on_attach,
  root_dir = lspconfig.util.root_pattern "package.json",
  single_file_support = false,
}

lspconfig.prismals.setup {
  on_attach = on_attach,
  root_dir = lspconfig.util.root_pattern "package.json",
}

--lspconfig.rust_analyzer.setup(
--  on_attach = on_attach,
--  capabilities = capabilities,
--  filetypes = {"rust"},
--  root_dir = util.root_pattern("Cargo.toml"),
--  settings = {
--    ['rust-analyzer'] = {
--      cargo = {
--        allFeatures = true,
--      },
--    },
--  },
--})
