function! InstallPluginDependencies(info)
    echom 'Installing plugin dependencies'
    let l:fdeps=$HOME . '/.config/nvim/config/plugin/' . a:info.name . '-deps.sh'
    echom l:fdeps

    if !empty(glob(l:fdeps))
        :execute "!" . glob(l:fdeps)
    endif

endfunction
