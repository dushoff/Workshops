ms = makestuff
-include local.mk
-include $(ms)/os.mk

Sources += $(ms)

## I think this rule will only be used once per repo.
## It's here in case I decide to automatically copy it
$(ms):
	git submodule add git@github.com:dushoff/$@.git

## Cloned versions already have the subdirectory, so can't use that rule for initialization. Need a file-based rule
## Dependency leads to pointless re-initialization
## Recursive make leads to infinite loops.
$(ms)/%.mk: 
	git submodule init $(ms) 
	git submodule update $(ms) 

