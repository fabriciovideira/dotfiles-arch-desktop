.PHONY: install
install: git konsole vim zsh

.PHONY: git
git:
	stow --no-folding -t ~ git

.PHONY: konsole
konsole:
	stow --no-folding -t ~ konsole

.PHONY: vim
vim:
	stow --no-folding -t ~ vim

.PHONY: zsh
zsh:
	stow --no-folding -t ~ zsh

