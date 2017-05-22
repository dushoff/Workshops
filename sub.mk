ms = makestuff

makestuff:
	git submodule init $@ || git submodule add git@github.com:dushoff/$@.git

-include local.mk
-include $(ms)/os.mk
