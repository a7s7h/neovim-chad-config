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

M.harpoon = {
  n = {
    ["<leader>a"] = {
      function()
        require("harpoon"):list():append()
      end,
      "Harpoon: add to list",
    },
    ["<C-e>"] = {
      function()
        local harpoon = require "harpoon"
        local conf = require("telescope.config").values
        local function toggle_telescope(harpoon_files, useTelescope)
          if useTelescope then
            local file_paths = {}
            for _, item in ipairs(harpoon_files.items) do
              table.insert(file_paths, item.value)
            end
            require("telescope.pickers")
              .new({}, {
                prompt_title = "Harpoon",
                finder = require("telescope.finders").new_table {
                  results = file_paths,
                },
                previewer = conf.file_previewer {},
                sorter = conf.generic_sorter {},
              })
              :find()
          else
            harpoon.ui:toggle_quick_menu(harpoon:list())
          end
        end
        toggle_telescope(harpoon:list(), false)
      end,
      "Harpoon: show list",
    },
    ["<leader>jj"] = {
      function()
        require("harpoon"):list():select(1)
      end,
      "Harpoon: 1",
    },
    ["<leader>jk"] = {
      function()
        require("harpoon"):list():select(2)
      end,
      "Harpoon: 2",
    },
    ["<leader>jl"] = {
      function()
        require("harpoon"):list():select(3)
      end,
      "Harpoon: 3",
    },
    ["<leader>j;"] = {
      function()
        require("harpoon"):list():select(4)
      end,
      "Harpoon: 4",
    },
    ["<A-]>"] = {
      function()
        require("harpoon"):list():next()
      end,
      "Harpoon: next",
    },
    ["<A-[>"] = {
      function()
        require("harpoon"):list():prev()
      end,
      "Harpoon: prev",
    },
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
    ["<A-j>"] = { ":m .1<CR>==", "Move block" },
    ["<A-k>"] = { ":m .-2<CR>==", "Move block" },
    -- [";"] = { ":", "enter command mode", opts = { nowait = true } },
  },
  i = {
    ["<A-j>"] = { "<Esc>:m .1<CR>==gi", "Move block" },
    ["<A-k>"] = { "<Esc>:m .-2<CR>==gi", "Move block" },
  },
  x = {
    ["<leader>p"] = { '"_dP', "Paste and keep register" },
    ["<A-j>"] = { ":m '>+1<CR>gv=gv", "Move block" },
    ["<A-k>"] = { ":m '<-2<CR>gv=gv", "Move block" },
    ["J"] = { ":m '>+1<CR>gv=gv", "Move block" },
    ["K"] = { ":m '<-2<CR>gv=gv", "Move block" },
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

M.flash = {
  n = {
    ["<C-g>"] = {
      function()
        require("flash").jump()
      end,
      "Flash jump",
    },
    ["<C-y>"] = {
      function()
        require("flash").treesitter_search()
      end,
      "Flash treesitter",
    },
    ["<C-t>"] = {
      function()
        require("flash").treesitter()
      end,
      "Flash treesitter",
    },
  },
}

return M
