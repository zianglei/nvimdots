local bind = require("keymap.bind")
local map_cr = bind.map_cr
local map_cu = bind.map_cu
local map_cmd = bind.map_cmd

-- default map
local def_map = {
	-- Vim map
	["n|<Tab>"] = map_cr("normal zc"):with_noremap():with_silent(),
	["n|<S-Tab>"] = map_cr("normal zo"):with_noremap():with_silent(),
	["n|<C-x>k"] = map_cr("bdelete"):with_noremap():with_silent(),
	["n|<C-s>"] = map_cu("write"):with_noremap(),
	["n|Y"] = map_cmd("y$"),
	["n|D"] = map_cmd("d$"),
	["n|n"] = map_cmd("nzzzv"):with_noremap(),
	["n|N"] = map_cmd("Nzzzv"):with_noremap(),
	["n|J"] = map_cmd("mzJ`z"):with_noremap(),
	["n|<A-[>"] = map_cr("vertical resize -5"):with_silent(),
	["n|<A-]>"] = map_cr("vertical resize +5"):with_silent(),
	["n|<A-;>"] = map_cr("resize -2"):with_silent(),
	["n|<A-'>"] = map_cr("resize +2"):with_silent(),
	["n|<C-q>"] = map_cmd(":wq<CR>"),
	["n|<A-q>"] = map_cmd(":Bwipeout<CR>"),
	["n|<A-S-q>"] = map_cmd(":q!<CR>"),
	["n|<leader>o"] = map_cr("setlocal spell! spelllang=en_us"),
	-- Insert
	["i|<C-u>"] = map_cmd("<C-G>u<C-U>"):with_noremap(),
	["i|<C-a>"] = map_cmd("<ESC>^i"):with_noremap(),
    ["i|<C-h>"] = map_cmd("<Left>"):with_noremap(),
    ["i|<C-j>"] = map_cmd("<Down>"):with_noremap(),
    ["i|<C-k>"] = map_cmd("<Up>"):with_noremap(),
    ["i|<C-l>"] = map_cmd("<Right>"):with_noremap(),
	-- command line
	["c|<C-b>"] = map_cmd("<Left>"):with_noremap(),
	["c|<C-f>"] = map_cmd("<Right>"):with_noremap(),
	["c|<C-a>"] = map_cmd("<Home>"):with_noremap(),
	["c|<C-e>"] = map_cmd("<End>"):with_noremap(),
	["c|<C-d>"] = map_cmd("<Del>"):with_noremap(),
	["c|<C-h>"] = map_cmd("<BS>"):with_noremap(),
	["c|<C-t>"] = map_cmd([[<C-R>=expand("%:p:h") . "/" <CR>]]):with_noremap(),
	["c|w!!"] = map_cmd("execute 'silent! write !sudo tee % >/dev/null' <bar> edit!"),
	-- Visual
	["v|J"] = map_cmd(":m '>+1<cr>gv=gv"),
	["v|K"] = map_cmd(":m '<-2<cr>gv=gv"),
	["v|<"] = map_cmd("<gv"),
	["v|>"] = map_cmd(">gv"),
    -- Tab
    ["n|<leader>tm"] = map_cmd("<C-w>T"):with_noremap(),
    ["n|<leader>tn"] = map_cr("tabnew"):with_noremap(),
    ["n|<leader>tq"] = map_cr("tabclose"):with_noremap(),
    ["n|<leader>1"] = map_cr("tabn 1"):with_silent():with_noremap(),
    ["n|<leader>2"] = map_cr("tabn 2"):with_silent():with_noremap(),
    ["n|<leader>3"] = map_cr("tabn 3"):with_silent():with_noremap(),
    ["n|<leader>4"] = map_cr("tabn 4"):with_silent():with_noremap(),
    ["n|<leader>5"] = map_cr("tabn 5"):with_silent():with_noremap(),
    ["n|<leader>6"] = map_cr("tabn 6"):with_silent():with_noremap(),
    ["n|<leader>7"] = map_cr("tabn 7"):with_silent():with_noremap(),
    ["n|<leader>8"] = map_cr("tabn 8"):with_silent():with_noremap(),
    ["n|<leader>9"] = map_cr("tabn 9"):with_silent():with_noremap(),
    -- Window
    ["n|<leader>q"] = map_cr("q"):with_silent():with_noremap(),
    ["n|<leader>wq"] = map_cr("wq"):with_silent():with_noremap(),
    ["i|<leader>wq"] = map_cr("<Esc>:wq"):with_silent():with_noremap(),
    -- Alt move enhancement
    -- Alt+h/l 快速左右按单词移动
    ["n|<M-h>"] = map_cmd("b"):with_noremap(),
    ["n|<M-l>"] = map_cmd("w"):with_noremap(),
    -- Alt+j/k 逻辑跳转下一行/上一行（按 wrap 逻辑跳转）
    ["n|<M-j>"] = map_cmd("gj"):with_noremap(),
    ["n|<M-k>"] = map_cmd("gk"):with_noremap(),
    ["i|<M-j>"] = map_cmd("<C-\\><C-o>gj"):with_noremap(),
    ["i|<M-k>"] = map_cmd("<C-\\><C-o>gk"):with_noremap(),
    -- 窗口切换: ALT+SHIFT+hjkl
    ["n|<M-H>"] = map_cmd("<C-W>h"):with_noremap();
	["n|<M-J>"] = map_cmd("<C-w>j"):with_noremap(),
	["n|<M-K>"] = map_cmd("<C-w>k"):with_noremap(),
	["n|<M-L>"] = map_cmd("<C-w>l"):with_noremap(),
	["i|<M-H>"] = map_cmd("<Esc><C-w>h"):with_noremap(),
	["i|<M-J>"] = map_cmd("<Esc><C-w>j"):with_noremap(),
	["i|<M-K>"] = map_cmd("<Esc><C-w>k"):with_noremap(),
	["i|<M-L>"] = map_cmd("<Esc><C-w>l"):with_noremap(),
    ["t|<M-H>"] = map_cmd("<C-\\><C-n><C-w>h"):with_noremap(),
    ["t|<M-J>"] = map_cmd("<C-\\><C-n><C-w>j"):with_noremap(),
    ["t|<M-K>"] = map_cmd("<C-\\><C-n><C-w>k"):with_noremap(),
    ["t|<M-L>"] = map_cmd("<C-\\><C-n><C-w>l"):with_noremap(),
    -- terminal 退出插入模式
    ["t|<A-q>"] = map_cmd("<C-\\><C-n>"):with_noremap(),
}

bind.nvim_load_mapping(def_map)
