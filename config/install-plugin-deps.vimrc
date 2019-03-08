function! InstallPluginDependencies(info)
	" info is a dictionary with 3 fields
	" - name:   name of the plugin
	" - status: 'installed', 'updated', or 'unchanged'
	" - force:  set on PlugInstall! or PlugUpdate!
	echom 'PLUGIN UPDATED'
l:fdeps=$HOME+'/'+a:info.name+'deps.sh'
	echom l:fdeps
	if filereadable(l:fdeps)
		echo "SpecificFile exists"
	endif
	if a:info.status == 'installed' || a:info.force
		echom a:info.name
	endif
	if a:info.status == 'installed' || a:info.force
		echom a:info.name
	endif
endfunction
