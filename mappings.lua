---@type MappingsTable
local M = {}

M.general = {
  n = {
    ["<C-h>"] = { "<cmd> TmuxNavigateLeft <CR>", "window left" },
    ["<C-l>"] = { "<cmd> TmuxNavigateRight <CR>", "window righ" },
    ["<C-j>"] = { "<cmd> TmuxNavigateDown <CR>", "window down" },
    ["<C-k>"] = { "<cmd> TmuxNavigateUp <CR>", "window up" },
  },
}

-- M.dap = {
--   n = {
--     ["<leader>b"] = {
--       function()
--         require("dap").toggle_breakpoint()
--       end,
--       "debug: toggle breakpoint",
--     },
--
--     ["<F5>"] = {
--       function()
--         require("dap").continue()
--       end,
--       "debug: continue",
--     },
--     ["<F10>"] = {
--       function()
--         require("dap").step_over()
--       end,
--       "debug: step over",
--     },
--     ["<F11>"] = {
--       function()
--         require("dap").step_into()
--       end,
--       "debug: step into",
--     },
--     ["<F12>"] = {
--       function()
--         require("dap").step_out()
--       end,
--       "debug: step out",
--     },
--   },
-- }

M.rusttools = {
  n = {
    ["<leader>ra"] = {
      function()
        local rt = require "rust-tools"
        rt.hover_actions.hover_actions()
        rt.hover_actions.hover_actions()
      end,
      "rust tools hover actions",
    },
    ["<leader>rg"] = {
      function()
        require("rust-tools").code_action_group.code_action_group()
      end,
      "rust tools code action group",
    },
  },
}

M.general = {
  n = {
    ["<C-d>"] = { "<C-d>zz", "Half page down centered" },
    ["<C-u>"] = { "<C-u>zz", "Half page up cetered" },
    ["YY"] = { "va}Vy", "Yank code block" },
    ["<A-j>"] = { ":m .1<CR>==", "Move block"},
    ["<A-k>"] = { ":m .-2<CR>==", "Move block"},
    -- [";"] = { ":", "enter command mode", opts = { nowait = true } },
  },
  i = {
    ["<A-j>"] = { "<Esc>:m .1<CR>==gi", "Move block"},
    ["<A-k>"] = { "<Esc>:m .-2<CR>==gi", "Move block"},
  },
  x = {
    ["<leader>p"] = { '"_dP', "Paste and keep register" },
    ["<A-j>"] = { ":m '>+1<CR>gv=gv", "Move block"},
    ["<A-k>"] = { ":m '<-2<CR>gv=gv", "Move block"},
    ["J"] = { ":m '>+1<CR>gv=gv", "Move block"},
    ["K"] = { ":m '<-2<CR>gv=gv", "Move block"},
  },
}

M.crates = {
  n = {
    ["<leader>rcu"] = {
      function()
        require("crates").upgrade_all_crates()
      end,
      "upgrade crates",
    },
  },
}

M.trouble = {
  n = {
    ["<leader>xx"] = { "<cmd>TroubleToggle<cr>", "toggle trouble" },
  },
}

M.prettier = {
  n = {
    ["<leader>pf"] = { "<cmd>Prettier<cr>", "format with prettier" },
  },
}

return M
