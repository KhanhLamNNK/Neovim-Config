vim.cmd[[packadd packer.nvim]]

return require('packer').startup(function(use)
use 'wbthomason/packer.nvim'
use 'savq/melange-nvim'
use 'windwp/nvim-autopairs'
use {
	'nvim-lualine/lualine.nvim',
	requires = { 'nvim-tree/nvim-web-devicons', opt =true}
}
use {
	'crispgm/nvim-tabline',
	config = true,
}
use 'nvim-tree/nvim-tree.lua'
use 'neovim/nvim-lspconfig'
--complete
use 'hrsh7th/nvim-cmp'
use 'hrsh7th/cmp-buffer'
use 'hrsh7th/cmp-path'
use 'saadparwaiz1/cmp_luasnip'
use 'hrsh7th/cmp-nvim-lsp'
use 'L3MON4D3/LuaSnip'
use 'rafamadriz/friendly-snippets'
use "williamboman/mason.nvim"
use({
    "glepnir/lspsaga.nvim",
    opt = true,
    branch = "main",
    event = "LspAttach",
    config = function()
        require("lspsaga").setup({})
    end,
    requires = {
        {"nvim-tree/nvim-web-devicons"},
        --Please make sure you install markdown and markdown_inline parser
        {"nvim-treesitter/nvim-treesitter"}
    }
})
use 'norcalli/nvim-colorizer.lua'
end)
