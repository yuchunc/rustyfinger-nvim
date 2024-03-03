require("rustyfinger.set")
require("rustyfinger.remap")

require("rustyfinger.lazy_init")

local augroup = vim.api.nvim_create_augroup
local NvimGroup = augroup("NvimGroup", {})

local autocmd = vim.api.nvim_create_autocmd
local yank_group = augroup('HighlightYank', {})

autocmd({"BufWritePre"}, {
    group = "NvimGroup",
    pattern = [[*\(.md\)\@<!]],
    command = [[%s/\s\+$//e]],
})

vim.g.netrw_browse_split = 0
vim.g.netrw_banner = 0
vim.g.netrw_winsize = 25
