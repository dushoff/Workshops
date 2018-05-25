# Workshops

## This was made as a hybrid container repo
## Do we want to move away from hierarchy altogether??

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

## Transition
# [submodule "disease_model_talks"]
# [submodule "statistics_talks"]
# [submodule "MMED2017"]
# [submodule "math_talks"]

##################################################################

## Content

clonedirs += statistics_talks
statistics_talks:
	git clone https://github.com/dushoff/$@.git $@

## cd math_talks && make rumfetch ##
clonedirs += math_talks
math_talks:
	git clone https://github.com/dushoff/$@.git $@

## cd disease_model_talks && make rumfetch ## ##
clonedirs += disease_model_talks
disease_model_talks:
	git clone https://github.com/dushoff/$@.git $@

## Outdated; merging into disease_model_talks!
clonedirs += Rabies_talks
Rabies_talks:
	git clone https://github.com/dushoff/$@.git $@

######################################################################

## Import/export

%.handouts.pdf: disease_model_talks/%.handouts.pdf
	$(copy)

%.handouts.pdf: statistics_talks/%.handouts.pdf
	$(copy)

daidd_2017_notes.tgz: family.handouts.pdf heterogeneity.handouts.pdf evaluation.handouts.pdf
	$(TGZ)

%.draft.pdf: disease_model_talks/%.draft.pdf
	$(copy)

%.draft.pdf: statistics_talks/%.draft.pdf
	$(copy)

daidd_2017_slides.tgz: family.draft.pdf heterogeneity.draft.pdf evaluation.draft.pdf
	$(TGZ)

######################################################################

### Makestuff

-include $(ms)/git.mk
-include $(ms)/visual.mk
