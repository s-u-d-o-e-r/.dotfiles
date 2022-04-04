local nvim_lsp = require('lspconfig')
local utils = require('lsp.utils')
local common_on_attach = utils.common_on_attach
local util = require 'lspconfig/util'
-- add capabilities from nvim-cmp
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities = require('cmp_nvim_lsp').update_capabilities(capabilities)

local lsp_installer = require("nvim-lsp-installer")



-- Register a handler that will be called for each installed server when it's ready (i.e. when installation is finished
-- or if the server is already installed).
lsp_installer.on_server_ready(function(server)
  local opts = {
    on_attach = common_on_attach,
    capabilities = capabilities
  }
  if server.name == "sumneko" then

    local system_name
    if fn.has('mac') == 1 then
      system_name = 'macOS'
    elseif fn.has('unix') == 1 then
      system_name = 'Linux'
    elseif fn.has('win32') == 1 then
      system_name = 'Windows'
    else
      print('Unsuported system for sumneko')
    end


    local sumneko_root_path = fn.stdpath('data')..'/lsp_servers/lua-language-server'
    local sumneko_binary = sumneko_root_path..'/bin/'..system_name..'/lua-language-server'

    local runtime_path = vim.split(package.path, ';')
    table.insert(runtime_path, "lua/?.lua")
    table.insert(runtime_path, "lua/?/init.lua")


    opts.cmd = {sumneko_binary, "-E", sumneko_root_path .. "/main.lua"};
    opts.settings = {
      Lua = {
        runtime = {
          version = 'LuaJIT',
          path = runtime_path,
        },
        diagnostics = {
          globals = {'vim'},
        },
        workspace = {
          library = vim.api.nvim_get_runtime_file("",true),
        },
        telemetry ={
          enable = false,
        },
      },
    }
  end


  if server.name == "eslint" then
    opts.on_attach = function (client, bufnr)
      -- neovim's LSP client does not currently support dynamic capabilities registration, so we need to set
      -- the resolved capabilities of the eslint server ourselves!
      client.resolved_capabilities.document_formatting = true
      common_on_attach(client, bufnr)
    end
    opts.settings = {
      format = { enable = true }, -- this will enable formatting
    }
  end


  if server.name == "emmet_ls" then
    opts.filetypes = { "html", "css","scss" }
  end


  -- (optional) Customize the options passed to the server
  -- if server.name == "tsserver" then
  --     opts.root_dir = function() ... end
  -- end

  -- This setup() function will take the provided server configuration and decorate it with the necessary properties
  -- before passing it onwards to lspconfig.
  -- Refer to https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md
  server:setup(opts)
end)






require('lsp.sumneko')
