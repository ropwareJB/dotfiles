if exists('g:GtkGuiLoaded')
	" neovim-gtk env
	call rpcnotify(1, 'Gui', 'Font', 'Fira Code 9')
	call rpcnotify(1, 'Gui', 'Option', 'Tabline', 0)
	let g:GuiInternalClipboard = 1
endif
