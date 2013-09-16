default:
all:

.vim/ftdetect/vim-literate-coffeescript.vim:
	mkdir -p $(@D) && curl https://raw.github.com/mintplant/vim-literate-coffeescript/master/ftdetect/vim-literate-coffeescript.vim > $@

.vim/indent/litcoffee.vim:
	mkdir -p $(@D) && curl https://raw.github.com/mintplant/vim-literate-coffeescript/master/indent/litcoffee.vim > $@

.vim/syntax/litcoffee.vim:
	mkdir -p $(@D) && curl https://raw.github.com/mintplant/vim-literate-coffeescript/master/syntax/litcoffee.vim > $@
