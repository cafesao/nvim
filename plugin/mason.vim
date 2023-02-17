lua << EOF
require("mason").setup({})
require("mason-lspconfig").setup()

local status, mason = pcall(require, "mason")
if (not status) then return end
local status2, lspconfig = pcall(require, "mason-lspconfig")
if (not status2) then return end
local nvim_lsp = require "lspconfig"

lspconfig.setup {
  ensure_installed = { "sumneko_lua", "tailwindcss" },
  }

nvim_lsp.tailwindcss.setup {}

EOF