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

- Version 3.4 (2012-10-10)
	- Improved highlights for help files
	- Use nicer cterm value for dark blue
- Version 3.3 (2012-02-28)
	- Corrected some cterm colors
- Version 3.2 (2012-01-07)
	- Made repo pathogen.vim-friendly
	- Added user highlight groups User1, User2, User3 for use in e.g. custom status line
	- Small adjustment to JavaScript highlights
- Version 3.1 (2011-12-12)
	- Improved highlights for JavaScript syntax mode
	- Switched the backgrounds of the normal and selected states of tabs so that
	  appearance of selected tab is more intuitive and obvious
	- Spelling was invisible since cterm doesn't support undercurl. Duh.
	  This adds corresponding background colors (faint variants) to cterm.
- Version 3.0 (2011-12-03)
	- Refined color palette: reduced chroma of certain accent colors; improved contrast
	- Made Todo style more obvious
	- Consolidated colors between dark and light variants
	- Improved highlights for CSS syntax mode
	- Improved highlights for shell syntax mode
	- DRYer method of color assignment
- Version 2.1 (2011-11-29)
	- Added fold markers to file
	- Minor improvements to organization
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

Hemisu by [Noah Frederick][1] is made available under the
[Creative Commons Attribution-NonCommercial 3.0 Unported License][2].

[1]: http://noahfrederick.com/
[2]: http://creativecommons.org/licenses/by-nc/3.0/

More information and updates can be found on the [canonical page][3]
and [GitHub repository][4].

[3]: http://noahfrederick.com/vim-color-scheme-hemisu/
[4]: https://github.com/noahfrederick/Hemisu

