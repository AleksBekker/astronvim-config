local chatgpt = require("chatgpt")

return {
  -- first key is the mode
  n = {
    -- second key is the lefthand side of the map

    -- navigate buffer tabs with `H` and `L`
    L = {
      function() require("astronvim.utils.buffer").nav(vim.v.count > 0 and vim.v.count or 1) end,
      desc = "Next buffer",
    },
    H = {
      function() require("astronvim.utils.buffer").nav(-(vim.v.count > 0 and vim.v.count or 1)) end,
      desc = "Previous buffer",
    },

    ["<leader>bD"] = {
      function()
        require("astronvim.utils.status").heirline.buffer_picker(
          function(bufnr) require("astronvim.utils.buffer").close(bufnr) end
        )
      end,
      desc = "Pick to close",
    },
    ["<leader>aa"] = {
      function()
        chatgpt.selectAwesomePrompt()
      end,
      desc = "ChatGPT Act As"
    },
    ["<leader>ao"] = {
      function()
        chatgpt.openChat()
      end,
      desc = "ChatGPT Open Chat"
    },

    -- Which key
    ["<leader>a"] = { name = "ChatGPT"},
    ["<leader>ac"] = { name = "ChatGPT Code"},
  },
  t = {
    -- Disable keybind:
    -- ["<esc>"] = false,
  },
}
