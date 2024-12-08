local Plug = vim.fn['plug#']

vim.call('plug#begin', '~/.config/nvim/plugged')
Plug('jremmen/vim-ripgrep')
Plug('ctrlpvim/ctrlp.vim')
Plug('neovim/nvim-lspconfig')
Plug('nvim-treesitter/nvim-treesitter', {['do'] = ':TSUpdate'})
vim.call('plug#end')

if vim.fn.executable('rg') == 1 then
  vim.opt.grepprg = 'rg --color=never'
  vim.g.ctrlp_user_command = 'rg %s --files --color=never --glob ""'
  vim.g.ctrlp_use_caching = 0
else
  vim.g.ctrlp_clear_cache_on_exit = 0
end
