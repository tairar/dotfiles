-- Plugin Maneger を自動でダウンロードする
local jetpackfile = vim.fn.stdpath('data') .. '/site/pack/jetpack/opt/vim-jetpack/plugin/jetpack.vim'
local jetpackurl = "https://raw.githubusercontent.com/tani/vim-jetpack/master/plugin/jetpack.vim"
if vim.fn.filereadable(jetpackfile) == 0 then
  vim.fn.system(string.format('curl -fsSLo %s --create-dirs %s', jetpackfile, jetpackurl))
end

-- vim-jetpack で入れ込むプラグインをここに記載していく
vim.cmd('packadd vim-jetpack')

require('jetpack.paq') {
  -- ここの中に、プラグインを追記していきます。
  {'tani/vim-jetpack', opt = 1}, -- bootstrap
	{'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'},
	'windwp/nvim-ts-autotag'	
}
