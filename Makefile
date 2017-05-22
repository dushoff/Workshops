# Workshops
### Hooks for the editor to set the default target
current: target

target pngtarget pdftarget vtarget acrtarget: add.Rout 

##################################################################

# make files

Sources += sub.mk Makefile 
Sources += .gitignore README.md LICENSE.md
include sub.mk

# include $(ms)/perl.def

##################################################################

## Content

Sources += add.R

add.Rout: add.R

######################################################################

### Makestuff

include $(ms)/git.mk
-include $(ms)/visual.mk

-include $(ms)/wrapR.mk
# -include $(ms)/oldlatex.mk

makestuff/%: makestuff ;
