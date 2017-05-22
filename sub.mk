ms = makestuff
-include local.mk
-include $(ms)/os.mk

Sources += $(ms)

## I think this rule will only be used once per repo.
## It's here in case I decide to automatically copy it
$(ms):
	git submodule add git@github.com:dushoff/$@.git

## It looks like git clone is making the subdirectory, so we need to focus on making the files
## Don't use a dependency here, as it will lead to re-initialization
## Recursive make will lead to infinite loops.
$(ms)/%.mk: 
	git submodule init $(ms) 
	git submodule update $(ms) 

