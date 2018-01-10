## .mk file for directories that want to link _up_ to makestuff
## For now, we're using chains of symbolic links

ms = makestuff
-include local.mk
-include $(ms)/os.mk

Sources += $(ms)

Makefile: $(ms)
$(ms): 
	ls -d ../makestuff && /bin/ln -fs ../makestuff .

Ignore += $(ms)

