local lspconfig = require('lspconfig')
local utils = require('utils.lsp')

-- add capabilities from nvim-cmp
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities = require('cmp_nvim_lsp').default_capabilities(capabilities)

--local servers = --{ "html", "cssls", "cssmodules_ls", "eslint", "emmet_ls", "sumneko_lua", "tsserver", "jsonls", "vimls", "rust_analyzer" }
require("mason").setup()
require 'mason-tool-installer'.setup {
  -- a list of all tools you want to ensure are installed upon
  -- start; they should be the names Mason uses for each tool
  ensure_installed = {
    'lua-language-server',
    'json-to-struct',
    'misspell',
    'shellcheck',
    'vint',
    "html-lsp",
    "css-lsp",
    "cssmodules-language-server",
    "eslint-lsp",
    "emmet-ls",
    "typescript-language-server",
    "json-lsp",
    "vim-language-server",
    "rust-analyzer",
    "tailwindcss-language-server"
  },
  -- if set to true this will check each tool for updates. If updates
  -- are available the tool will be updated.
  auto_update = true
}

require("mason-lspconfig").setup()
require("mason-lspconfig").setup_handlers({
  function(serverName)
    local config = {
      on_attach = utils.common_on_attach,
      capabilities = capabilities,
    }

    if serverName == "sumneko_lua" then
      config.settings = {
        Lua = {
          runtime = {
            -- Tell the language server which version of Lua you're using (most likely LuaJIT in the case of Neovim)
            version = 'LuaJIT',
          },
          diagnostics = {
            -- Get the language server to recognize the `vim` global
            globals = { 'vim' },
          },
          workspace = {
            -- Make the server aware of Neovim runtime files
            library = vim.api.nvim_get_runtime_file("", true),
          },
          -- Do not send telemetry data containing a randomized but unique identifier
          telemetry = {
            enable = false,
          },
        },
      }
    end


    if serverName == "eslint" then
      config.on_attach = function(client, bufnr)
        -- neovim's LSP client does not currently support dynamic capabilities registration, so we need to set
        -- the server capabilities of the eslint server ourselves!
        client.server_capabilities.document_formatting = true
        utils.common_on_attach(client, bufnr)
      end
      config.settings = {
        format = { enable = true }, -- this will enable formatting
      }
    end


    if serverName == "emmet_ls" then
      config.filetypes = { "html", "css", "scss" }
    end

    if serverName == "angularls" then
      config.filetypes = { "javascriptreact", "typescriptreact", "typescript.tsx", "htmlangular" , "js", "javascript", "ts", "typescript", "html" }
    end

    if serverName == "ts_ls" then
      config.settings = {
        preferences = {
          includeInlayParameterNameHints = 'all',
        },

        ['typescript.format.enable'] = false
      }
    end



    if serverName == "rust_analyzer" then
      config.settings = {
        ["rust-analyzer"] = {
          assist = {
            importGranularity = "module",
            importPrefix = "self",
          },
          cargo = {
            loadOutDirsFromCheck = true
          },
          procMacro = {
            enable = true
          },
        }
      }
    end
    lspconfig[serverName].setup(config)
  end
})

-- Change border of documentation hover window, See https://github.com/neovim/neovim/pull/13998.
vim.lsp.handlers["textDocument/hover"] = vim.lsp.with(vim.lsp.handlers.hover, {
  border = "rounded",
})
