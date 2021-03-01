local lsp = require("lspconfig")
local completion = require("completion")

local eslint = {
  lintCommand = "eslint_d -f unix --stdin --stdin-filename ${INPUT}",
  lintStdin = true,
  lintFormats = {"%f:%l:%c: %m"},
  lintIgnoreExitCode = true,
  formatCommand = "eslint_d --fix-to-stdout --stdin --stdin-filename=${INPUT}",
  formatStdin = true
}

local prettier = {
	formatCommand = "./node_modules/.bin/prettier --stdin-filepath=${INPUT}",
	formatStdin = true
}

local servers = {
  tsserver = {},
  cssls = {},
  efm = {
    before = function (client)
      client.resolved_capabilities.goto_definition = false
      client.resolved_capabilities.find_references = false
      client.resolved_capabilities.declaration = false
      client.resolved_capabilities.rename = false
    end,
    init_options = { documentFormatting = true },
    settings = {
      rootMarkers = {".git/"},
      languages = {
        javascript = {eslint, prettier},
        javascriptreact = {eslint, prettier},
        ["javascript.jsx"] = {eslint, prettier},
        typescriptreact = {eslint, prettier},
        typescript = {eslint, prettier},
        ["typescript.tsx"] = {eslint, prettier}
      },
    },
    filetypes = {
      "javascript",
      "javascriptreact",
      "javascript.jsx",
      "typescript",
      "typescriptreact",
      "typescript.tsx"
    }
  },
}

local function make_on_attach(config)
  return function (client, bufnr)
    if config.before then
      config.before(client, bufnr)
    end

    completion.on_attach(client)

    local function buf_set_keymap(...) vim.api.nvim_buf_set_keymap(bufnr, ...) end
    local function buf_set_option(...) vim.api.nvim_buf_set_option(bufnr, ...) end

    buf_set_option('omnifunc', 'v:lua.vim.lsp.omnifunc')

    -- Mappings.
    local opts = { noremap=true, silent=true }
    buf_set_keymap('n', 'gD', '<Cmd>lua vim.lsp.buf.declaration()<CR>', opts)
    buf_set_keymap('n', 'gd', '<Cmd>lua vim.lsp.buf.definition()<CR>', opts)
    buf_set_keymap('n', 'K', '<Cmd>lua vim.lsp.buf.hover()<CR>', opts)
    buf_set_keymap('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<CR>', opts)
    buf_set_keymap('n', '<C-k>', '<cmd>lua vim.lsp.buf.signature_help()<CR>', opts)
    buf_set_keymap('n', '<space>wa', '<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>', opts)
    buf_set_keymap('n', '<space>wr', '<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>', opts)
    buf_set_keymap('n', '<space>wl', '<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>', opts)
    buf_set_keymap('n', '<space>D', '<cmd>lua vim.lsp.buf.type_definition()<CR>', opts)
    buf_set_keymap('n', '<space>rn', '<cmd>lua vim.lsp.buf.rename()<CR>', opts)
    buf_set_keymap('n', 'gr', '<cmd>lua vim.lsp.buf.references()<CR>', opts)
    buf_set_keymap('n', '<space>e', '<cmd>lua vim.lsp.diagnostic.show_line_diagnostics()<CR>', opts)
    buf_set_keymap('n', '[d', '<cmd>lua vim.lsp.diagnostic.goto_prev()<CR>', opts)
    buf_set_keymap('n', ']d', '<cmd>lua vim.lsp.diagnostic.goto_next()<CR>', opts)
    buf_set_keymap('n', '<space>q', '<cmd>lua vim.lsp.diagnostic.set_loclist()<CR>', opts)

    -- Format on save
    if client.resolved_capabilities.document_formatting then
      vim.cmd [[augroup Format]]
      vim.cmd [[autocmd!]]
      vim.cmd [[autocmd BufWritePre <buffer> lua vim.lsp.buf.formatting_sync(nil, 1000)]]
      vim.cmd [[augroup END]]
    end

    -- Set some keybinds conditional on server capabilities
    if client.resolved_capabilities.document_formatting then
      buf_set_keymap("n", "<space>f", "<cmd>lua vim.lsp.buf.formatting()<CR>", opts)
    elseif client.resolved_capabilities.document_range_formatting then
      buf_set_keymap("n", "<space>f", "<cmd>lua vim.lsp.buf.range_formatting()<CR>", opts)
    end

    if config.after then
      config.after(client)
    end
  end
end

for server, config in pairs(servers) do
  config = config or {}
  config.on_attach = make_on_attach(config)
  lsp[server].setup(config)
end


-- SIGNS --
local signs = {
  {"LspDiagnosticsSignError", {text = "✗", texthl = "LspDiagnosticsSignError"}},
  {"LspDiagnosticsSignWarning", {text = "", texthl = "LspDiagnosticsSignWarning"}},
  {"LspDiagnosticsSignInformation", {text = "", texthl = "LspDiagnosticsSignInformation"}},
  {"LspDiagnosticsSignHint", {text = "", texthl = "LspDiagnosticsSignHint"}}
}

for _, sign in pairs(signs) do
  vim.fn.sign_define(unpack(sign))
end
