"    Copyright: This program is free software: you can redistribute it and/or
"               modify it under the terms of the GNU General Public License as
"               published by the Free Software Foundation; either version 3 of the
"               License, or (at your option) any later version.
"
"               This program is distributed in the hope that it will be useful,
"               but WITHOUT ANY WARRANTY; without even the implied warranty of
"               MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
"               General Public License for more details.
"
"               You should have received a copy of the GNU General Public License
"               along with this program.  If not, see
"               `http://www.gnu.org/licenses/'.
"
" Name Of File: gpicker.vim
"  Description: Bindings for gpicker, fast file chooser.
"  Maintainers: Sergey Avseyev <sergey.avseyev@gmail.com>
" Contributors:
"
" Release Date: May 12, 2012
"      Version: 0.4
"     Keywords: autocompletion
"
"      Install: Copy file into ~/.vim/plugin directory or put in .vimrc
"
"                 source /path/to/this/script/gpicker.vim
"
"        Usage: To launch the gpicker:
"
"                 <Leader>mr - Opens the gpicker from directory of file.
"                 <Leader>mg - Opens the gpicker from current directory.
"                 <Leader>mf - The same as above, but don't guess SCM.
"                 <Leader>mb - Opens the gpicker to chose from list of
"                              current buffers.
"                 <Leader>mm - Opens the gpicker feeding entries from
"                              mlocate database (use g:gpicker_mlocate_db to
"                              choose one, by default: "/var/lib/mlocate/mlocate.db")
"
"               You can also use the commands correspondingly:
"
"                 ":GPickFileFromHere"
"                 ":GPickFile"
"                 ":GPickFileDefault"
"                 ":GPickBuffer"
"                 ":GPickLocate"
"

" Exit quickly when already loaded.
if exists("g:loaded_gpicker") || executable("gpicker") == 0
  finish
endif

if exists("g:gpicker_mlocate_db") == 0
  let g:gpicker_mlocate_db = "/var/lib/mlocate/mlocate.db"
endif
