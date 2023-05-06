---@type MappingsTable
local M = {}

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
    [";"] = { ":", "enter command mode", opts = { nowait = true } },
  },
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
