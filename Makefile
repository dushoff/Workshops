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

dirs = LatexTemplates disease_model_talks statistics_talks MMED2017 math_talks
dfiles: $(dirs:%=%/Makefile)
Sources += $(dirs)

######################################################################

### Makestuff

include $(ms)/git.mk
-include $(ms)/modules.mk

-include $(ms)/visual.mk

-include $(ms)/wrapR.mk

makestuff/%: makestuff ;
