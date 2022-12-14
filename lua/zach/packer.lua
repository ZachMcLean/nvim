local fn = vim.fn

-- Automatically install packer
local install_path = fn.stdpath "data" .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
    PACKER_BOOTSTRAP = fn.system {
        "git",
        "clone",
        "--depth",
        "1",
        "https://github.com/wbthomason/packer.nvim",
        install_path,
    }
    print "Installing packer close and reopen Neovim..."
    vim.cmd [[packadd packer.nvim]]
end 

-- Autocommand that reloads neovim whenever you save the plugins.lua file
vim.cmd [[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]]

-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then
  return
end

-- Have packer use a popup window
packer.init {
    display = {
        open_fn = function()
            return require("packer.util").float { border = "rounded" }
        end,
    },
}
-- this file can be loaded by calling `lua require('plugins')` from your init.vim
--
-- only required if you have packer configured as 'opt'

return require("packer").startup(function(use) 
    -- My Plugins Here && Packer can manage itself
    use 'wbthomason/packer.nvim'

    use 'folke/tokyonight.nvim'
    use 'ellisonleao/gruvbox.nvim'

    use 'nvim-lua/popup.nvim' -- An implementation of the Popup API from vim in Neovim
    use 'nvim-lua/plenary.nvim' -- Useful lua functions used in lots of plugins
    use 'windwp/nvim-autopairs' -- Autopairs, integrates with both cmp and treesitter
    use 'numToStr/Comment.nvim' -- Easily comment stuff
    use 'kyazdani42/nvim-web-devicons' -- Cool icons for JS, HTML, etc
    use 'kyazdani42/nvim-tree.lua'  -- replaces netrw with NvimTree
    use 'akinsho/bufferline.nvim'
    use 'moll/vim-bbye'

    use 'goolord/alpha-nvim' -- home page ui

    -- use 'SirVer/utilsnips'
    use 'mlaursen/vim-react-snippets'

    use "hrsh7th/nvim-cmp"  -- The completion plugin
    use "hrsh7th/cmp-buffer"  -- buffer completion 
    use "hrsh7th/cmp-path"  -- path completion 
    use "hrsh7th/cmp-cmdline"  -- cmdline completion 
    use "saadparwaiz1/cmp_luasnip"  -- snippet completion 
    use "hrsh7th/cmp-nvim-lsp"  -- giving us cmp completions for code

    -- snippets
    use "L3MON4D3/LuaSnip"  -- snippet engine
    use "rafamadriz/friendly-snippets"  -- a bunch of snippets to use

    -- LSP
    use "neovim/nvim-lspconfig"  -- enable LSP
    use "williamboman/nvim-lsp-installer"  -- simple to use language server nvim-lsp-installer
    
    -- Telescope
    use 'nvim-telescope/telescope.nvim'
    use 'nvim-telescope/telescope-media-files.nvim'

    -- Treesitter
    use {
        'nvim-treesitter/nvim-treesitter',
        run = "TSUpdate",
    }
    use "p00f/nvim-ts-rainbow"
    use "JoosepAlviste/nvim-ts-context-commentstring"

    -- Git
    use 'lewis6991/gitsigns.nvim'
    -- Automatically setup your configuration after cloning packer.nvim
    -- Put this at the end after all plugins
    if PACKER_BOOTSTRAP then
      require("packer").sync()
    end
end)
