
Hemisu Color Scheme for Vim
===========================

License
-------

Hemisu by [Noah Frederick](http://noahfrederick.com/blog/2011/vim-color-scheme-hemisu/) is licensed under a [Creative Commons Attribution-NonCommercial 3.0 Unported License](http://creativecommons.org/licenses/by-nc/3.0/).

Usage
-----

To install and use this color scheme, move the file hemisu.vim into your colors directory (e.g., ~/.vim/colors/).

The color scheme comes in two flavors, dark and light. To toggle between the two modes, set the background in Vim:

	:set background=dark
	:set background=light

To enable syntax highlighting and use the color scheme automatically when you start Vim, add the following to your .vimrc:

	if &t_Co > 2 || has("gui_running")
	  syntax on
	  colorscheme hemisu
	endif

Change Log
----------

- Version 1.0 (2011-11-13)
	- Initial release
