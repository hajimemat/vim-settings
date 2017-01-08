.PHONY:  ~/.config/nvim/init.vim
neovim: /usr/bin/pip /usr/bin/nvim
	sudo pip install --upgrade neovim
	make -f archlinux.mk ~/.config/nvim/init.vim
	make -f archlinux.mk ~/.vimrc
/usr/bin/pip:
	yaourt -S python-pip
/usr/bin/nvim:
	yaourt -S neovim
~/.config/nvim/init.vim: ~/.config/nvim
	echo let g:start_with_nvim=1 > $@
	echo source $(realpath vimrc) >> $@
~/.config/nvim:
	mkdir -p $@
~/.vimrc:
	ln -sf $(realpath vimrc) $@
