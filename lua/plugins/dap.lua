-- local M = {
--   "mfussenegger/nvim-dap",
--
--   dependencies = {
--     {
--       "rcarriga/nvim-dap-ui",
--
--       config = function()
--         require("dapui").setup()
--       end,
--     },
--     -- { "jbyuki/one-small-step-for-vimkind" },
--     -- { "theHamsta/nvim-dap-virtual-text", config = true },
--     -- { "mfussenegger/nvim-dap-python" },
--     --{ "Pocco81/dap-buddy.nvim" },
--   },
-- }
--
-- function M.init()
--   --keymaps
--   require("which-key").register({
--     ["<leader>d"] = { name = "+debug" },
--   })
--
--   vim.keymap.set("n", "<leader>db", function()
--     require("dap").toggle_breakpoint()
--   end, { desc = "Toggle Breakpoint" })
--
--   vim.keymap.set("n", "<leader>dc", function()
--     require("dap").continue()
--   end, { desc = "Continue" })
--
--   vim.keymap.set("n", "<leader>do", function()
--     require("dap").step_over()
--   end, { desc = "Step Over" })
--
--   vim.keymap.set("n", "<leader>di", function()
--     require("dap").step_into()
--   end, { desc = "Step Into" })
--
--   vim.keymap.set("n", "<leader>dw", function()
--     require("dap.ui.widgets").hover()
--   end, { desc = "Widgets" })
--
--   vim.keymap.set("n", "<leader>dr", function()
--     require("dap").repl.open()
--   end, { desc = "Repl" })
--
--   vim.keymap.set("n", "<leader>du", function()
--     require("dapui").toggle({})
--   end, { desc = "Dap UI" })
--   vim.keymap.set("n", "<leader>dq", function()
--     require("dap").terminate()
--   end, { desc = "Quit Dap" })
-- end
--
-- function M.config()
--   local dap = require("dap")
--   local dapui = require("dapui")
--   vim.fn.sign_define("DapBreakpoint", { text = "🏓", texthl = "", linehl = "", numhl = "" })
--   dap.listeners.after.event_initialized["dapui_config"] = function()
--     dapui.open({})
--   end
--   dap.listeners.before.event_terminated["dapui_config"] = function()
--     dapui.close({})
--   end
--   dap.listeners.before.event_exited["dapui_config"] = function()
--     dapui.close({})
--   end
-- end
--
-- -- - `DapBreakpoint` for breakpoints (default: `B`)
-- -- - `DapBreakpointCondition` for conditional breakpoints (default: `C`)
-- -- - `DapLogPoint` for log points (default: `L`)
-- -- - `DapStopped` to indicate where the debugee is stopped (default: `→`)
-- -- - `DapBreakpointRejected` to indicate breakpoints rejected by the debug
-- --   adapter (default: `R`)
-- --
-- -- You can customize the signs by setting them with the |sign_define()| function.
-- -- For example:
-- --
-- -- >
-- --     lua << EOF
-- --     vim.fn.sign_define('DapBreakpoint', {text='🛑', texthl='', linehl='', numhl=''})
-- --     EOF
-- -- <
--
-- return M

return {
  {
    "mfussenegger/nvim-dap",
    keys = {
            { "<leader>dd", function() require("dapui").toggle() end, desc = "debug: toggle UI" },
            { "<leader>dc", function() require("dap").continue() end, desc = "debug: continue" },
            { "<leader>dj", function() require("dap").step_over() end, desc = "debug: step over" },
            { "<leader>dl", function() require("dap").step_into() end, desc = "debug: step into" },
            { "<leader>dh", function() require("dap").step_out() end, desc = "debug: step out" },
            { "<leader>da", function() require("dap").run_last() end, desc = "debug: run last" },
            { "<leader>dr", function() require("dap").restart() end, desc = "debug: restart session" },
            { "<leader>db", function() require("dap").toggle_breakpoint() end, desc = "debug: toggle breakpoint" },
            { "<leader>dB", function() require("dap").set_breakpoint(vim.fn.input("Breakpoint condition: ")) end, desc = "debug: toggle conditional breakpoint" },
            { "<leader>dt", function() require("dap").terminate() end, desc = "debug: terminate session" },
        },
    dependencies = {
      { "rcarriga/nvim-dap-ui", config = true },
      {
        "theHamsta/nvim-dap-virtual-text",
        opts = {
          commented = true,
        },
      },
    },
    config = function()
      local dapui, dap = require("dapui"), require("dap")
      dap.listeners.after.event_initialized["dapui_config"] = dapui.open
      dap.listeners.before.event_terminated["dapui_config"] = dapui.close
      dap.listeners.before.event_exited["dapui_config"] = dapui.close
    end,
  },
}
