local M = {}

function M.setup()
  require("base16-colorscheme").setup({
    -- Background tones
    base00 = "#282a36", -- Default Background
    base01 = "#44475a", -- Lighter Background (status bars)
    base02 = "#4d5066", -- Selection Background
    base03 = "#6d7290", -- Comments, Invisibles
    -- Foreground tones
    base04 = "#d6d8e0", -- Dark Foreground (status bars)
    base05 = "#f8f8f2", -- Default Foreground
    base06 = "#f8f8f2", -- Light Foreground
    base07 = "#f8f8f2", -- Lightest Foreground
    -- Accent colors
    base08 = "#ff5555", -- Variables, XML Tags, Errors
    base09 = "#8be9fd", -- Integers, Constants
    base0A = "#ff79c6", -- Classes, Search Background
    base0B = "#bd93f9", -- Strings, Diff Inserted
    base0C = "#82e7fd", -- Regex, Escape Chars
    base0D = "#b586f8", -- Functions, Methods
    base0E = "#ff80c9", -- Keywords, Storage
    base0F = "#a20000", -- Deprecated, Embedded Tags
  })
end

-- Register a signal handler for SIGUSR1 (matugen updates)
local signal = vim.uv.new_signal()
signal:start(
  "sigusr1",
  vim.schedule_wrap(function()
    package.loaded["matugen"] = nil
    require("matugen").setup()
  end)
)

return M
