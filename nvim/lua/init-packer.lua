return require('packer').startup(function()
    -- packer 
    use 'wbthomason/packer.nvim'
    --comment
    use {
    'numToStr/Comment.nvim',
    config = function()
        require('Comment').setup()
    end
}
    -- tree
    use {
  'nvim-tree/nvim-tree.lua',
  requires = {
    'nvim-tree/nvim-web-devicons', -- optional
  },
}
    use 'nvim-tree/nvim-web-devicons'
    use {
	"windwp/nvim-autopairs",
    config = function() require("nvim-autopairs").setup {} end
}
    
    -- lsp 
    use 'neovim/nvim-lspconfig' -- Collection of configurations for built-in LSP client
    use 'L3MON4D3/LuaSnip'
    -- nvim-cmp
    use {'hrsh7th/cmp-nvim-lsp'}
    use {'hrsh7th/cmp-buffer'}
    use {'hrsh7th/cmp-path'}
    use {'hrsh7th/cmp-cmdline'}
    use {'hrsh7th/nvim-cmp'}
    -- vsnip
    use {'hrsh7th/cmp-vsnip'} 
    use {'hrsh7th/vim-vsnip'}
    use {'rafamadriz/friendly-snippets'}
    -- lspkind
    use {'onsails/lspkind-nvim'}
    -- theme
    use 'sainnhe/sonokai'

    -- bufferline
    -- using packer.nvim
    use {'akinsho/bufferline.nvim', tag = "v3.*", requires = 'nvim-tree/nvim-web-devicons'}

    --statusline
    use 'windwp/windline.nvim'

    --leap
    use 'ggandor/leap.nvim'
end)
