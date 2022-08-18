local opt = {
	clipboard = 'unnamedplus', -- Connection to the system clipboard
	cmdheight = 0, -- Hide command line unless needed
	cursorline = true, -- Highlight the text line of the cursor
	fillchars = { eob = ' ' },
	mouse = "a", -- Enable mouse support
	number = true, -- Show numberline
	relativenumber = true, -- Show relative numberline
	numberwidth = 1, -- Set relative number same indent
	swapfile = false, -- Disable us of swapfile for the buffer
	tabstop = 2, -- Number of space in a tab
	shiftwidth = 2, -- Number of space inserted for indentation
	termguicolors = true, -- Enable 24-bit RGB color in the TUI
	undofile = true, --Enable persistent undo
	wrap = false, -- Disable wrapping of lines longer than the width of window
	writebackup = false, -- Disable making a backup before overwriting a file
	laststatus = 3, -- Set status line to global
	copyindent = true, -- Copy the previous indentation on autoindenting
	signcolumn = 'yes',
}

local g = {
	indent_blankline_char = "▏", -- Set indent blank line more to left
	mapleader = " ", -- Set leader key
	autopairs_enabled = true, -- Enable autopairs at start
	zipPlugin = false, -- disable zip
	load_black = false, -- disable black
}

local default_plugins = {
  "2html_plugin",
  "getscript",
  "getscriptPlugin",
  "gzip",
  "logipat",
  "netrw",
  "netrwPlugin",
  "netrwSettings",
  "netrwFileHandlers",
  "matchit",
  "tar",
  "tarPlugin",
  "rrhelper",
  "spellfile_plugin",
  "vimball",
  "vimballPlugin",
  "zip",
  "zipPlugin",
  "tutor",
  "rplugin",
  "syntax",
  "synmenu",
  "optwin",
  "compiler",
  "bugreport",
  "ftplugin",
}

for key, value in pairs(default_plugins) do
  g["loaded_" .. value] = true
end

for key, value in pairs(opt) do
	vim.opt[key] = value
end

for key, value in pairs(g) do 
	vim.g[key] = value
end
