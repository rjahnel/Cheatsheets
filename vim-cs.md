VIM-CS
======
___

# Misc
- Reload .vimrc -> :so %
- Edit Config -> e $MYVIMRC
- Completion -> ctrl-n
- Change inside -> ci) oder ci“ oder ci}
- Delete inside -> di) usw.
- :set list -> unsichtbare Zeichnen sichtbar (set nolist):

# Buffers
- ctrl+^ -> switch buffer
- :e! -> restore original file
- :bt! -> remove buffer from the bufferlist
- alt-n -> next Buffer
- alt-b -> previous buffer

# Windows
- ctrl-w s -> split current window horizontally
- ctrl-w v -> split current window vertically
- ctrl-w w -> cycle between windows
- ctrl-w +/- -> decrease/increase window
- ctrl-w
- ctrl-w c -> close current window
- ctrl-w x -> switch window
- ctrl-w arrow -> move cursor up a window
- ctrl-w_ - maximize current window
- ctrl-w= - make all equal size
- 10 ctrl-w+ - increase window size by 10 lines
- :hide - close current window
- :only - keep only this window open
- :b 2 - open buffer #2 in this window
- :vsplit file - vertical split
- :sview file - same as split, but readonly
- shell
- :! -> execute shell-command

# autocomplete
- ctrl-n / ctrl+p

# Files
- :w -> save buffer
- :e <name> -> open file
- :e. -> file explorer

# Moving
- gg -> Begin of file
- G -> End of file
- 60gg -> Goto line 60
- ^ -> First char of the line
- $ -> Last char of the line
- ctrl + d -> half page down
- ctrl + u -> half page up
- ctrl + b -> page down
- ctrl + f -> page up
- 0 -> Begin of the line
- $ -> End of the line
- w -> next word
- b -> previous word
- k -> Line down
- j -> Line up
- l -> char forward
- h -> char backward
- H -> Top Screen
- M -> Middle Screen
- L -> Botton Screen

# Search
- /pattern - search forward for pattern
- ?pattern - search backward
- n - repeat forward search
- N - repeat backward
- * - select word under cursor
- , + <space> - deselect selection

# Help
- Helpwindow expand
- Help tag -> ,t
- Help tag back -> ctrl-o
- NERDTree -> ctrl-n
- Tagesdatum -> F5

# Vimwiki
- [[ ]] -> to make the text actual links surround with
- :VWS /blog/ -> Search for the term “blog”
- :lopen -> show all of the matches
- ,w,w -> Using diary
- ,wi -> go to the diary index
- ,c -> using the calendar plugin to toggle on/off
- ,w,i -> update entries
- ,ww -> Open default wiki index file.
- ,wt -> Open default wiki index file in a new tab.
- ,ws -> Select and open wiki index file.
- ,wd -> Delete wiki file you are in.
- ,wr -> Rename wiki file you are in.
- <Enter> -> Follow/Create wiki link
- <Shift-Enter> -> Split and follow/create wiki link
- <Ctrl-Enter> -> Vertical split and follow/create wiki link
- <Backspace> -> Go back to parent(previous) wiki link
- <Tab> -> Find next wiki link
- <Shift-Tab> -> Find previous wiki link
- :h vimwiki-mappings
- :VimwikiDiaryGenerateLinks -> build a diary index
- :VimWiki2HTML -- Convert current wiki link to HTML
- :VimWikiAll2HTML -- Convert all your wiki links to HTML
- :help vimwiki-commands -- list all commands
- :help vimwiki -- General vimwiki help docs

# TODO
- Toggle complete/uncomplete -> ctrl-SPACE
- Toggle listitem in TOD-Item -> ctrl-SPACE

# Tips
- #n-chars repeating
- <ESC><n>i<char><ESC>

## Example
- <ESC>10i-<ESC> -> writes 10 times -

## past n times a character No. 2

- x (cut)
- 80 (n times)
- p (paste)
