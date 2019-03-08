# My neovim configuration
## Useful shortkeys provided by editor and plugins
##### vim-gitgutter
| Key        | Meaning    |
| ---        | ---        |
| <leader>hp | preview    |
| <leader>hu | undo hunk  |
| <leader>hs | stage hunk |

##### vim-easy-align
| Key     | Meaning        |
| ---     | ---            |
| gaip\*| | align md table |

##### vim-fugitive
| Key        | Meaning                 |
| ---        | ---                     |
| :Gread     | checkout current file   |
| :Grwrite   | stage current file      |
| :Grwrite   | right way to move files |
| :Gcommit   | commit                  |
| :Gblame    | who to blame            |
| :Gstatus   | same as git status      |
| <leader>hs | stage hunk              |
:Gstatus mode use "-" to add and "=" to preview, <cr> to view file.
    <S-c> commits staged chnages
    <S-x> unstage changes
:Gdiff mode left side is index version right side - current.
    Use :Gwrite in both sides to either accept or remove changes.
    As oposite can be used :Gread
    Use :diffget in index buffer(left side) on highlighted part
    As oposite :diffput
    to get only hunk of chages
    :diffupdate to update chages if patched
:Gdiff in conflicted file. Left - target, middle - working, right - merge branch
    target buffer (left)  = //2
    merge buffer (right) = //3
    | target (//2) | working copy | merge (//3) |
    to resolve use working buffer and use :diffget //2 or :diffget //3 to get changes
    :diffupdate to update highlight
