# Conf

## Install

To install:
````
./setup.sh install
````
This will move any existing files to <file>-old.

To uninstall:
````
./setup.sh uninstall
````

## Cheat sheet vim

* Create a session: mksession <name> (SessionManager)
* Restart a session: vim -S <name> (SessionManager)
* Open NERDTree: "j" (NerdTream)
* Cycle through autocompletion options with <tab> (supertab)
* :SCROLL to change colorscheme (scrollcolor)
* Select inside or outside surrounding (): vi(, vib, vab, ... (surround)
* Delete surrounding ": ds" (surround)
* Copy inside (): yib (surround)
* delete an argument: daa (argtextobj)
* change an argument: caa (argtextobj)
* delete inner argument: cia (argtextobj)
* select inner argument: via (argtextobj)
* syntax for md files (md-vim)
* Go to file under cursor in a split: hgf (goto.vim)
* Go to file under cursor in a vsplit: vgf (goto.vim)
* Go to file under cursor in new tab: tgf (goto.vim)
* Switch indent style with :IndentStyle (indentation.vim)
* -- to disable highlighting after a search
* <space>-<up>/<down>/<left>/<right> to move between windows
* Add ALE for linters and fixers
* Add vim-fugitive. Run :Git <command> like :Git blame
* :Gdiffsplit to compare working tree version with staged version
