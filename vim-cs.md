# VIM-CS

## Misc
Reload .vimrc -> :so %
Edit Config -> e $MYVIMRC
Completion -> ctrl-n
Change inside -> ci) oder ci“ oder ci}
Delete inside -> di) usw.
:set list -> unsichtbare Zeichnen sichtbar (set nolist):

## Buffers
ctrl+^ -> switch buffer
:e! -> restore original file
:bt! -> remove buffer from the bufferlist
alt-n -> next Buffer
alt-b -> previous buffer

## Windows
ctrl-w s -> split current window horizontally
ctrl-w v -> split current window vertically
ctrl-w w -> cycle between windows
ctrl-w +/- -> decrease/increase window
ctrl-w
ctrl-w c -> close current window
ctrl-w x -> switch window
ctrl-w arrow -> move cursor up a window
ctrl-w_ - maximize current window
ctrl-w= - make all equal size
10 ctrl-w+ - increase window size by 10 lines
:hide - close current window
:only - keep only this window open
:b 2 - open buffer #2 in this window
:vsplit file - vertical split
:sview file - same as split, but readonly
shell
:! -> execute shell-command
autocomplete
ctrl-n / ctrl+p
Files
:w -> save buffer
:e <name> -> open file
:e. -> file explorer

## Moving
gg -> Dateianfang
G -> Dateiende
60gg -> gehe zu Zeile 60
^ -> Erstes Zeichen der Zeile
$ -> letztes Zeichen der Zeile
ctrl + d -> halbe Seite runter
ctrl + u -> halbe Seite hoch
ctrl + b -> Seite runter
ctrl + f -> Seite hoch
0 -> Zeilenanfang
$ -> Zeilenende
w -> nächstes Wort
b -> vorhergehendes Wort
k -> Zeile hoch
j -> Zeile runter
l -> Buchstabe vor
h -> Buchstabe zurück
H -> Top Screen
M -> Middle Screen
L -> Botton Screen

## Search
/pattern - search forward for pattern
?pattern - search backward
n - repeat forward search
N - repeat backward
* - select word under cursor
, + <space> - deselect selection

## Help
Helpwindow expand
Help tag -> ,t
Help tag back -> ctrl-o
NERDTree -> ctrl-n
Tagesdatum -> F5

## Vimwiki
[[ ]] -> to make the text actual links surround with
:VWS /blog/ -> Search for the term “blog”
:lopen -> show all of the matches
,w,w -> Using diary
,wi -> go to the diary index
,c -> using the calendar plugin to toggle on/off
,w,i -> update entries
,ww -> Open default wiki index file.
,wt -> Open default wiki index file in a new tab.
,ws -> Select and open wiki index file.
,wd -> Delete wiki file you are in.
,wr -> Rename wiki file you are in.
<Enter> -> Follow/Create wiki link
<Shift-Enter> -> Split and follow/create wiki link
<Ctrl-Enter> -> Vertical split and follow/create wiki link
<Backspace> -> Go back to parent(previous) wiki link
<Tab> -> Find next wiki link
<Shift-Tab> -> Find previous wiki link
:h vimwiki-mappings
:VimwikiDiaryGenerateLinks -> build a diary index
:VimWiki2HTML -- Convert current wiki link to HTML
:VimWikiAll2HTML -- Convert all your wiki links to HTML
:help vimwiki-commands -- list all commands
:help vimwiki -- General vimwiki help docs

## TODO
Toggle complete/uncomplete -> ctrl-SPACE
Toggle listitem in TOD-Item -> ctrl-SPACE

## Tipps
#n-Zeichen wiederholen
<ESC><n>i<zeichen><ESC>
Beispiel
<ESC>10i-<ESC> -> schreibt 10 x das -
Bestimmte Anzahl von Zeichen einfügen No. 2
x (auschneiden)
80 (Anzahl der Kopien)
p (Einfügen)
