# Workshops

## This is a new container repo (see hybrid repo)

######################################################################

### Hooks for the editor to set the default target
current: target
-include target.mk

##################################################################

# make files
# make .gitmodules.ef6f1.oldfile

Sources += makestuff.mk Makefile 
Sources += .ignore README.md LICENSE.md
include makestuff.mk

# include $(ms)/perl.def

##################################################################

## Transition
# [submodule "disease_model_talks"]
# [submodule "statistics_talks"]
# [submodule "MMED2017"]
# [submodule "math_talks"]

##################################################################

## Content

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
