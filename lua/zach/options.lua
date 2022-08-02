-- :help options
vim.opt.backup = false
vim.opt.clipboard = "unnamedplus"   -- allows for nvim to access the system clipboard '+'
vim.opt.cmdheight = w               -- more space in the neovim command line for displaying messages
vim.opt.conceallevel = 0            -- so that `` is visiable in markdown files
vim.opt.fileencoding = "utf-8"      -- the encoding written to a file
vim.opt.hlsearch = true             -- highlight all matches on previous search patterns
vim.opt.ignorecase = true           -- ignore case in search patterns
vim.opt.mouse = "a"                 -- allows the mouse to be used in neovim
vim.opt.pumheight = 10              -- pop up menu height
-- vim.opt.showmode = false            -- disable things like -- INSERT -- 
vim.opt.showtabline = 2             -- always show tabs
vim.opt.smartcase = true            -- smart case
vim.opt.smartindent = true          -- make indenting smarter again
vim.opt.splitbelow = true           -- force all horizontal splits to go below current window
vim.opt.splitright = true           -- force all vertical splits to go to the right of current window
vim.opt.swapfile = false            -- creates a swapfile
vim.opt.termguicolors = true        -- set term gui colors (most terminals support this)
vim.opt.timeoutlen = 1000           -- time to wait for a mapped sequence to complete (in milliseconds)
vim.opt.undofile = true             -- enable persistent undo
vim.opt.updatetime = 300            -- faster completion (4000ms default)
vim.opt.writebackup = false
vim.opt.expandtab = true            -- convert tabs to spaces
vim.opt.shiftwidth = 2              -- the number of spaces inserted for each indentation
vim.opt.tabstop = 2                 -- insert 2 spaces for a tab
vim.opt.cursorline = true           -- highlight current line
vim.opt.number = true               -- set numbered lines
vim.opt.relativenumber = false      -- set relative numbered lines
vim.opt.numberwidth = 4             -- set number column width to 2 {default 4}
vim.opt.signcolumn = "yes"           -- always show the sign column, otherwise it would shift the text each time
vim.opt.wrap = false                -- display lines as one long line
vim.opt.scrolloff = 8               -- is one of the best
vim.opt.sidescrolloff = 8

-- can pass vim script as a string
vim.cmd "set whichwrap+=<,>,[,],h,l"
