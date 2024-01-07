local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities

local lspconfig = require "lspconfig"
local util = require "lspconfig/util"

-- if you just want default config for the servers then put them in a table
local servers = {
  "html",
  "svelte",
  "tsserver",
  "cssls",
  "tailwindcss",
  "clangd",
  "zls",
  "prismals",
  "gopls",
  "templ",
  "htmx",
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

lspconfig.gopls.setup {
  on_attach = on_attach,
  capabilities = capabilities,
  cmd = {"gopls"},
  filetypes = {"go", "gomod", "gowork", "gotmpl", "templ"},
  root_dir = util.root_pattern("go.work", "go.mod", ".git"),
  settings = {
    gopls = {
      completeUnimported = true,
      usePlaceholders = true,
      analyses = {
        unusedparams = true,
      }
    }
  }
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

lspconfig.emmet_ls.setup {
  capabilities = capabilities,
  filetypes = {
    "css",
    "eruby",
    "html",
    "javascript",
    "javascriptreact",
    "less",
    "sass",
    "scss",
    "svelte",
    "pug",
    "typescriptreact",
    "vue",
  },
  init_options = {
    html = {
      options = {
        -- For possible options, see: https://github.com/emmetio/emmet/blob/master/src/config.ts#L79-L267
        ["bem.enabled"] = true,
      },
    },
  },
}

lspconfig.tailwindcss.setup({
  on_attach = on_attach,
  filetypes = {
    "templ"
  },
  init_options = {
    userLanguages = {
      templ = "html"
    }
  }
})

lspconfig.htmx.setup {
  on_attach = on_attach,
  filetypes = {
    "templ"
  }
}
