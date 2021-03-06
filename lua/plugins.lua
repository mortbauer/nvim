-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function()
  -- Add packer itself
  use {'wbthomason/packer.nvim'}

  -- Plugins can have post-install/update hooks
  use {'iamcco/markdown-preview.nvim', run = 'cd app && yarn install', cmd = 'MarkdownPreview'}

  -- Post-install/update hook with neovim command
  use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }

  --lsp
  use { 'neovim/nvim-lspconfig' }

  --completition
  use { 'hrsh7th/nvim-cmp' }

  --color scheme
  --use { 'EdenEast/nightfox.nvim' }

  --file explorer
  use { 'kyazdani42/nvim-tree.lua' }

  --sane python folding
  use { 'eddiebergman/nvim-treesitter-pyfold' }

  --tagbar via lsp
  use { 'liuchengxu/vista.vim' }

  --molokai colorscheme
  use { 'tanvirtin/monokai.nvim' }
  use { 'tomasr/molokai'}
  use { 'noah/vim256-color'}

  use {
    'numToStr/Comment.nvim',
    config = function()
        require('Comment').setup()
    end
  }
  -- use { 'tpope/vim-commentary' }
  use { 'tpope/vim-fugitive' }
  use { 'google/vim-jsonnet' }
end)
