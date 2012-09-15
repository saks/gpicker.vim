# gpicker.vim

Bindings for gpicker, fast file chooser.
Mainteners: [Sergey Avseyev](https://github.com/avsej)
Contributors: [saksmlz](https://github.com/saks)

Release Date: May 12, 2012
     Version: 0.4
    Keywords: autocompletion


### Installation
Extract the [archive](https://github.com/saks/gpicker.vim/zipball/master) or clone the repository into a directory in your 'runtimepath' or use [pathogen](https://github.com/tpope/vim-pathogen).

### Usage
To launch the gpicker:

                <Leader>mr - Opens the gpicker from directory of file.
                <Leader>mg - Opens the gpicker from current directory.
                <Leader>mf - The same as above, but don't guess SCM.
                <Leader>mb - Opens the gpicker to chose from list of
                             current buffers.
                <Leader>mm - Opens the gpicker feeding entries from
                             mlocate database (use g:gpicker_mlocate_db to
                             choose one, by default: "/var/lib/mlocate/mlocate.db")

              You can also use the commands correspondingly:

                ":GPickFileFromHere"
                ":GPickFile"
                ":GPickFileDefault"
                ":GPickBuffer"
                ":GPickLocate"

If you are want to open file each file in the separate tab, add this like to your .vimrc:

```vim
" GPicker settings
let g:gpicker_open_file_in_tabs = 1
```
