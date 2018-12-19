# Workshops

## This was made as a hybrid container repo
## Do we want to move away from hierarchy altogether??

## Yes! I really want to deprecate this complicated container and put its children directly into gitroot. But what about their children??

## Removed a whole bunch more stuff 2018 Dec 18 (Tue)

######################################################################

### Hooks for the editor to set the default target
current: target
-include target.mk

##################################################################

Sources += Makefile .ignore 
Ignore += .gitignore

msrepo = https://github.com/dushoff
ms = makestuff
Ignore += local.mk
-include local.mk
-include $(ms)/os.mk

## Cloned ms in this non-working repo
Ignore += $(ms)
## Sources += $(ms)
Makefile: $(ms)
$(ms):
	git clone $(msrepo)/$(ms)

# -include $(ms)/perl.def

##################################################################

screen_session: ../disease_model_talks.vscreen ../statistics_talks.vscreen ../math_talks.vscreen

## Transition
# [submodule "disease_model_talks"]
# [submodule "statistics_talks"]
# [submodule "MMED2017"]
# [submodule "math_talks"]

##################################################################

### Makestuff

-include $(ms)/git.mk
-include $(ms)/visual.mk
