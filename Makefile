# Workshops

## Removed a whole bunch more stuff 2018 Dec 18 (Tue)
## No submodules now; am I happy? 2019 Jan 27 (Sun)

######################################################################

### Hooks for the editor to set the default target
current: target
-include target.mk

##################################################################

Sources += Makefile README.md

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

screen_session: ../disease_model_talks.vscreen ../statistics_talks.vscreen ../math_talks.vscreen ../Generation_talks.vscreen

## Transition
# [submodule "disease_model_talks"]
# [submodule "statistics_talks"]
# [submodule "MMED2017"]
# [submodule "math_talks"]

##################################################################

### Makestuff

-include $(ms)/git.mk
-include $(ms)/visual.mk
