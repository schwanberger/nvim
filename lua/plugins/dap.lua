return {
  {
    "folke/which-key.nvim",
    opts = function()
      require("which-key").register({
            ["<leader>d"] = { name = "+debug", mode = { "n", "v" } },
          })
        end,
  },
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
      { "<leader>dt", function() require("dap").terminate() end, desc = "debug: terminate session" }
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
