local lspconfig = require('lspconfig')
local utils = require('lsp.utils')
local fn = vim.fn

-- add capabilities from nvim-cmp
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities = require('cmp_nvim_lsp').update_capabilities(capabilities)

local servers = { "html","cssls","cssmodules_ls","eslint","emmet_ls","sumneko_lua","tsserver","jsonls","vimls" }

require("nvim-lsp-installer").setup {
  automatic_installation = true
}
-- Use a loop to conveniently call 'setup' on multiple servers and
-- map buffer local keybindings when the language server attaches
for _, serverName in pairs(servers) do

  local config = {
    on_attach = utils.common_on_attach,
    capabilities = capabilities,
    flags = {
      -- This will be the default in neovim 0.7+
      debounce_text_changes = 150,
    }
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
          globals = {'vim'},
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
    config.on_attach = function (client, bufnr)
      -- neovim's LSP client does not currently support dynamic capabilities registration, so we need to set
      -- the resolved capabilities of the eslint server ourselves!
      client.resolved_capabilities.document_formatting = true
      common_on_attach(client, bufnr)
    end
    config.settings = {
      format = { enable = true }, -- this will enable formatting
    }
  end


  if serverName == "emmet_ls" then
    config.filetypes = { "html", "css","scss" }
  end

  if serverName == "tsserver" then
    config.settings = {
      preferences = {
        includeInlayParameterNameHints= 'all';
      }
    }
  end



  lspconfig[serverName].setup(config)
end

