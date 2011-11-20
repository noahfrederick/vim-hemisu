Hemisu Color Scheme for Vim
===========================

![Screen shot of MacVim](http://farm7.static.flickr.com/6101/6342657394_209d6847e8_z.jpg)

Features
--------

- Two modes: one optimized for daytime, the other optimized for low light conditions
- Made to work with both GUIs (gui) and color terminals (cterm)
- Provides harmonious colors and styles for all predefined UI elements and syntax groups

Usage
-----

To install and use this color scheme, move the file hemisu.vim into your colors directory
(e.g., `~/.vim/colors/`).

The color scheme comes in two flavors, dark and light. To toggle between the two modes,
set the background in Vim:

	:set background=dark
	:set background=light

To enable syntax highlighting and use the color scheme automatically when you start Vim,
add the following to your .vimrc:

	if &t_Co > 2 || has("gui_running")
	  syntax on
	  colorscheme hemisu
	endif

Change Log
----------

- Version 2.0 (2011-11-20)
	- Completely refactored for easier maintenance
	- Added remaining UI color groups
	- Added diff color groups
	- Added spelling color groups
	- Full support for both GUIs (gui) and color terminals (cterm)
	- Various adjustments to existing colors
- Version 1.0 (2011-11-13)
	- Initial release

License
-------

Hemisu by [Noah Frederick](http://noahfrederick.com/) is made available under the
[Creative Commons Attribution-NonCommercial 3.0 Unported License](http://creativecommons.org/licenses/by-nc/3.0/).

