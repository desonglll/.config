-- -- Additional Plugins <https://www.lunarvim.org/docs/plugins#user-plugins>
lvim.plugins = {
  {
    "folke/trouble.nvim",
    cmd = "TroubleToggle",
  },
  { "folke/tokyonight.nvim" },
  { "catppuccin/nvim",      name = "catppuccin" },
  {
    "phaazon/hop.nvim",
    event = "BufRead",
    config = function()
      require("hop").setup()
      vim.api.nvim_set_keymap("n", "w", ":HopChar2<cr>", { silent = true })
      vim.api.nvim_set_keymap("n", "W", ":HopWord<cr>", { silent = true })
      vim.api.nvim_set_keymap("n", "g", ":HopWord<cr>", { silent = true })
    end,
  },
  {
    "nacro90/numb.nvim",
    event = "BufRead",
    config = function()
      require("numb").setup {
        show_numbers = true,    -- Enable 'number' for the window while peeking
        show_cursorline = true, -- Enable 'cursorline' for the window while peeking
      }
    end,
  },
  {
    "sindrets/diffview.nvim",
    event = "BufRead",
  },
  {
    "karb94/neoscroll.nvim",
    event = "WinScrolled",
    config = function()
      require('neoscroll').setup({
        -- All these keys will be mapped to their corresponding default scrolling animation
        mappings = { '<C-u>', '<C-d>', '<C-b>', '<C-f>',
          '<C-y>', '<C-e>', 'zt', 'zz', 'zb' },
        hide_cursor = true,          -- Hide cursor while scrolling
        stop_eof = true,             -- Stop at <EOF> when scrolling downwards
        use_local_scrolloff = false, -- Use the local scope of scrolloff instead of the global scope
        respect_scrolloff = false,   -- Stop scrolling when the cursor reaches the scrolloff margin of the file
        cursor_scrolls_alone = true, -- The cursor will keep on scrolling even if the window cannot scroll further
        easing_function = nil,       -- Default easing function
        pre_hook = nil,              -- Function to run before the scrolling animation starts
        post_hook = nil,             -- Function to run after the scrolling animation ends
      })
    end
  },
  {
    "preservim/tagbar"
  },
  {
    "morhetz/gruvbox",
  },
  {
    "haishanh/night-owl.vim",
  },
  {
    'gen740/SmoothCursor.nvim',
    config = function()
      require('smoothcursor').setup({
        autostart = true,
        cursor = "",          -- cursor shape (need nerd font)
        texthl = "SmoothCursor", -- highlight group, default is { bg = nil, fg = "#FFD400" }
        linehl = nil,            -- highlight sub-cursor line like 'cursorline', "CursorLine" recommended
        type = "default",        -- define cursor movement calculate function, "default" or "exp" (exponential).
        fancy = {
          enable = false,        -- enable fancy mode
          head = { cursor = "▷", texthl = "SmoothCursor", linehl = nil },
          body = {
            { cursor = "", texthl = "SmoothCursorRed" },
            { cursor = "", texthl = "SmoothCursorOrange" },
            { cursor = "●", texthl = "SmoothCursorYellow" },
            { cursor = "●", texthl = "SmoothCursorGreen" },
            { cursor = "•", texthl = "SmoothCursorAqua" },
            { cursor = ".",   texthl = "SmoothCursorBlue" },
            { cursor = ".",   texthl = "SmoothCursorPurple" },
          },
          tail = { cursor = nil, texthl = "SmoothCursor" }
        },
        flyin_effect = nil,        -- "bottom" or "top"
        speed = 20,                -- max is 100 to stick to your current position
        intervals = 35,            -- tick interval
        priority = 10,             -- set marker priority
        timeout = 3000,            -- timout for animation
        threshold = 3,             -- animate if threshold lines jump
        disable_float_win = false, -- disable on float window
        enabled_filetypes = nil,   -- example: { "lua", "vim" }
        disabled_filetypes = nil,  -- this option will be skipped if enabled_filetypes is set. example: { "TelescopePrompt", "NvimTree" }

      })
    end
  },
  {
    "ahmedkhalf/project.nvim",
    config = function()
      require("project_nvim").setup {
        -- your configuration comes here
        -- or leave it empty to use the default settings
        -- refer to the configuration section below
      }
    end
  },
 
}

-- -- Autocommands (`:help autocmd`) <https://neovim.io/doc/user/autocmd.html>
-- vim.api.nvim_create_autocmd("FileType", {
--   pattern = "zsh",
--   callback = function()
--     -- let treesitter use bash highlight for zsh files as well
--     require("nvim-treesitter.highlight").attach(0, "bash")
--   end,
-- })
