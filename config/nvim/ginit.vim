if exists('g:GtkGuiLoaded')
	" neovim-gtk env
	call rpcnotify(1, 'Gui', 'Font', 'Fira Code 9')
	call rpcnotify(1, 'Gui', 'Option', 'Tabline', 0)
	let g:GuiInternalClipboard = 1
endif

if g:os == "Darwin"
	set macligatures
	set guifont=Fira\ Code:h12
elseif g:os == "Linux"
	" NOP
elseif g:os == "Windows"
	" NOP
endif
