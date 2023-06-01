-- keymappings <https://www.lunarvim.org/docs/configuration/keybindings>
lvim.leader = "space"
-- add your own keymapping
lvim.keys.normal_mode["<C-s>"] = ":w<cr>"
lvim.keys.normal_mode["<C-s>"] = ":w<cr>"
lvim.keys.insert_mode["jk"] = "<ESC>"
lvim.keys.normal_mode["|"] = ":vsplit<CR>"
lvim.keys.normal_mode["-"] = ":split<CR>"
lvim.keys.normal_mode["<S-l>"] = ":BufferLineCycleNext<CR>"
lvim.keys.normal_mode["<S-h>"] = ":BufferLineCyclePrev<CR>"
lvim.builtin.which_key.mappings["t"] = { "<cmd>TagbarToggle<cr>", "TagbarToggle" }
-- -- Use which-key to add extra bindings with the leader-key prefix
-- lvim.builtin.which_key.mappings["W"] = { "<cmd>noautocmd w<cr>", "Save without formatting" }
-- lvim.builtin.which_key.mappings["P"] = { "<cmd>Telescope projects<CR>", "Projects" }

-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",

-- leader key 为,

local opt = {
  noremap = true,
  silent = true,
}

-- 本地变量
local map = vim.api.nvim_set_keymap

-- $跳到行尾不带空格 (交换$ 和 g_)
map('v', '$', 'g_', opt)
map('v', 'g_', '$', opt)
map('n', '$', 'g_', opt)
map('n', 'g_', '$', opt)

-- 命令行下 Ctrl+j/k  上一个下一个
map('c', '<C-j>', '<C-n>', { noremap = false })
map('c', '<C-k>', '<C-p>', { noremap = false })

-- fix :set wrap
vim.keymap.set('n', 'j', "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })
vim.keymap.set('n', 'k', "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })

-- 上下滚动浏览
map('n', '<C-j>', '5j', opt)
map('n', '<C-k>', '5k', opt)
map('v', '<C-j>', '5j', opt)
map('v', '<C-k>', '5k', opt)
-- ctrl u / ctrl + d  只移动9行，默认移动半屏
--map('n', '<C-u>', '10k', opt)
--map('n', '<C-d>', '10j', opt)

-- magic search
map('n', '/', '/\\v', { noremap = true, silent = false })
map('v', '/', '/\\v', { noremap = true, silent = false })

-- visual模式下缩进代码
map('v', '<', '<gv', opt)
map('v', '>', '>gv', opt)
-- 上下移动选中文本
map('v', 'J', ":move '>+1<CR>gv-gv", opt)
map('v', 'K', ":move '<-2<CR>gv-gv", opt)

-- 在visual mode 里粘贴不要复制
map('v', 'p', '"_dP', opt)

-- 退出
-- map('n', 'w', '<cmd>w<CR>', opt)
-- map('n', 'wq', ':wq<CR>', opt)
map('n', "<leader>q", ":q<CR>", opt)
--map('n', "<leader>qq", ":qa!<CR>", opt)
map('i', 'jj', '<ESC>', opt)

-- insert 模式下，跳到行首行尾
map("i", "<C-h>", "<ESC>I", opt)
map("i", "<C-l>", "<ESC>A", opt)

------------------------------------------------------------------
-- windows 分屏快捷键
------------------------------------------------------------------
-- 取消 s 默认功能
map('n', 's', '', opt)
map('n', 'sv', ':vsp<CR>', opt)
map('n', 'sb', ':sp<CR>', opt)
-- 关闭当前
map('n', 'sc', '<C-w>c', opt)
-- 关闭其他
map('n', 'so', '<C-w>o', opt)
-- ctrl + hjkl  窗口之间跳转
map('n', 'H', '<C-w>h', opt)
map('n', 'J', '<C-w>j', opt)
map('n', 'K', '<C-w>k', opt)
map('n', 'L', '<C-w>l', opt)
-- <leader> + hjkl 窗口之间跳转
map('n', '<leader>h', '<C-w>h', opt)
map('n', '<leader>j', '<C-w>j', opt)
map('n', '<leader>k', '<C-w>k', opt)
map('n', '<leader>l', '<C-w>l', opt)
-- 左右比例控制
map('n', '<C-Right>', ':vertical resize -1<CR>', opt)
map('n', '<C-Left>', ':vertical resize +1<CR>', opt)
map('n', 'sh', ':vertical resize +5<CR>', opt)
map('n', 'sl', ':vertical resize -5<CR>', opt)
-- 上下比例
map('n', 'sj', ':resize -1<CR>', opt)
map('n', 'sk', ':resize +1<CR>', opt)
-- map('n', '<C-Down>', ':resize -1<CR>', opt)
-- map('n', '<C-Up>', ':resize +1<CR>', opt)
-- 相等比例
-- map('n', 's=', '<C-w>=', opt)

-- -- Esc 回 Normal 模式
-- map('t', 'jj', '<C-\\><C-n>', opt)
-- map('t', '<C-h>', [[ <C-\><C-N><C-w>h ]], opt)
-- map('t', '<C-j>', [[ <C-\><C-N><C-w>j ]], opt)
-- map('t', '<C-k>', [[ <C-\><C-N><C-w>k ]], opt)
-- map('t', '<C-l>', [[ <C-\><C-N><C-w>l ]], opt)
-- map('t', '<leader>h', [[ <C-\><C-N><C-w>h ]], opt)
-- map('t', '<leader>j', [[ <C-\><C-N><C-w>j ]], opt)
-- map('t', '<leader>k', [[ <C-\><C-N><C-w>k ]], opt)
-- map('t', '<leader>l', [[ <C-\><C-N><C-w>l ]], opt)
