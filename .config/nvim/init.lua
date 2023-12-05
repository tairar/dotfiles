require('base')
require('highlights')
require('setup_plugin')

if vim.fn.has('win64') == 1 then
	require 'nvim-treesitter.install'.prefer_git = false
	require 'nvim-treesitter.install'.compilers = { "clang", "gcc" }
end
