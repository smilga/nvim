function FixFileIfConfigExists()
    let config = getcwd().'/.php-cs-fixer.dist.php'
    if filereadable(config)
        silent! call  PhpCsFixerFixFile()
    endif
endfunction

autocmd BufWritePost *.php  call FixFileIfConfigExists()
