---@type MappingsTable
local M = {}

M.general = {
  n = {
    ["<C-h>"] = { "<cmd> TmuxNavigateLeft <CR>", "window left" },
    ["<C-l>"] = { "<cmd> TmuxNavigateRight <CR>", "window righ" },
    ["<C-j>"] = { "<cmd> TmuxNavigateDown <CR>", "window down" },
    ["<C-k>"] = { "<cmd> TmuxNavigateUp <CR>", "window up" },
  }
}

M.dap = {
  n = {
    ["<leader>b"] = {
      function()
        require("dap").toggle_breakpoint()
      end,
      "debug: toggle breakpoint"
    },

    ["<F5>"] = {
      function()
        require("dap").continue()
      end,
      "debug: continue"
    },
    ["<F10>"] = {
      function()
        require("dap").step_over()
      end,
      "debug: step over"
    },
    ["<F11>"] = {
      function()
        require("dap").step_into()
      end,
      "debug: step into"
    },
    ["<F12>"] = {
      function()
        require("dap").step_out()
      end,
      "debug: step out"
    },
  }
}

M.rusttools = {
  n = {
    ["<leader>ra"] = {
      function()
        local rt = require("rust-tools")
        rt.hover_actions.hover_actions()
        rt.hover_actions.hover_actions()
      end,
      "rust tools hover actions"
    },
    ["<leader>rg"] = {
      function()
        require("rust-tools").code_action_group.code_action_group()
      end,
      "rust tools code action group"
    }
  }
}

M.general = {
  n = {
    ["<C-d>"] = { "<C-d>zz", "half page down centered" },
    ["<C-u>"] = { "<C-u>zz", "half page up cetered" },
    ["YY"] = { "va}Vy", "Yank code block" },

    -- [";"] = { ":", "enter command mode", opts = { nowait = true } },
  },
  x = {
    ["<leader>p"] = { "\"_dP", "paste and keep register" },
  }
}

M.crates = {
  n = {
    ["<leader>rcu"] = {
      function ()
        require("crates").upgrade_all_crates()
      end,
      "upgrade crates"
    }
  }
}
return M
