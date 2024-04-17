require('base')
require('highlights')
require('setup_plugin')
require('onedark').load()

if vim.fn.has('wsl') == 1 then
  vim.g.clipboard = {
  name = "win32yank-wsl",
  copy = {
    ["+"] = "win32yank.exe -i --crlf",
    ["*"] = "win32yank.exe -i --crlf"
    },
  paste = {
    ["+"] = "win32yank.exe -o --crlf",
    ["*"] = "win32yank.exe -o --crlf"
    },
  cache_enable = 0,
  }
elseif vim.fn.has('win64') == 1 then
	require 'nvim-treesitter.install'.prefer_git = false
	require 'nvim-treesitter.install'.compilers = { "clang", "gcc" }
end
