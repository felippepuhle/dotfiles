-- Suport transparent background
vim.cmd [[autocmd ColorScheme * highlight Normal guibg=NONE ctermbg=NONE]]

local config = {
  -- Set colorscheme to use
  colorscheme = "nord",

  -- Mappings
  mappings = {
    -- first key is the mode
    n = {
      -- second key is the lefthand side of the map
      -- mappings seen under group name "Buffer"
      ["<leader>bb"] = { "<cmd>tabnew<cr>", desc = "New tab" },
      ["<leader>bc"] = { "<cmd>BufferLinePickClose<cr>", desc = "Pick to close" },
      ["<leader>bj"] = { "<cmd>BufferLinePick<cr>", desc = "Pick to jump" },
      ["<leader>bt"] = { "<cmd>BufferLineSortByTabs<cr>", desc = "Sort by tabs" },

      -- tests (not working yet)
      ["<leader>Tr"] = { function() require("neotest").run.run() end, desc = "Run the nearest test" },
      ["<leader>Tf"] = { function() require("neotest").run.run(vim.fn.expand "%") end, desc = "Run the current file" },
      ["<leader>To"] = { function() require("neotest").output.open() end, desc = "Open output" },

      -- resize (need to put a title to whichkey)
      ["<leader>rk"] = { function() require("smart-splits").resize_up(10) end, desc = "Resize split up" },
      ["<leader>rj"] = { function() require("smart-splits").resize_down(10) end, desc = "Resize split down" },
      ["<leader>rh"] = { function() require("smart-splits").resize_left(10) end, desc = "Resize split left" },
      ["<leader>rl"] = { function() require("smart-splits").resize_right(10) end, desc = "Resize split right" },
    },
  },

  -- Configure plugins
  plugins = {
    init = {
      {
        "arcticicestudio/nord-vim",
      },
      {
        "nvim-neotest/neotest",
        requires = {
          "nvim-lua/plenary.nvim",
          "nvim-treesitter/nvim-treesitter",
          "antoinemadec/FixCursorHold.nvim",
          "haydenmeade/neotest-jest",
        },
        config = function()
          require("neotest").setup {
            adapters = {
              require "neotest-python" {
                dap = { justMyCode = false },
              },
              require "neotest-plenary",
              require "neotest-vim-test" {
                ignore_file_types = { "python", "vim", "lua" },
              },
            },
          }
        end,
      },
    },

    treesitter = {
      ensure_installed = { "lua", "typescript", "graphql", "regex" },
      rainbow = {
        colors = { "#8FBCBB", "#D8DEE9", "#88C0D0", "#E5E9F0", "#81A1C1", "#ECEFF4", "#5E81AC" },
      },
    },

    ["null-ls"] = function(config)
      local null_ls = require "null-ls"
      config.sources = {
        -- Set a linter
        null_ls.builtins.code_actions.eslint_d,
        null_ls.builtins.diagnostics.eslint_d,
        null_ls.builtins.diagnostics.tsc,

        -- Set a formatter
        null_ls.builtins.formatting.stylua,
        null_ls.builtins.formatting.prettierd,
      }

      -- Format on save
      config.on_attach = function(client)
        if client.resolved_capabilities.document_formatting then
          vim.api.nvim_create_autocmd("BufWritePre", {
            desc = "Auto format before save",
            pattern = "<buffer>",
            callback = vim.lsp.buf.formatting_sync,
          })
        end
      end
      return config
    end,
  },
}

return config
