# Workshops

### Hooks for the editor to set the default target
### target.mk should not be in the repo, and it shouldn't matter if you don't have it or use it
current: target
-include target.mk

##################################################################

# make files

Sources += sub.mk Makefile 
Sources += .gitignore README.md LICENSE.md
include sub.mk

# include $(ms)/perl.def

##################################################################

## Content

## This is a skeleton repo, whose main purpose is to make a working directory with other repos

dirs = disease_model_talks statistics_talks MMED2017 math_talks
dfiles: $(dirs:%=%/Makefile)
Sources += $(dirs)

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

include $(ms)/git.mk
-include $(ms)/modules.mk

-include $(ms)/visual.mk

-include $(ms)/wrapR.mk

makestuff/%: makestuff ;
