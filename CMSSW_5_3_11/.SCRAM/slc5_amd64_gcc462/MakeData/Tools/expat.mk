expat             := expat
ALL_TOOLS      += expat
expat_LOC_INCLUDE := /pscratch/osg/app/cmssoft/cms/slc5_amd64_gcc462/external/expat/2.0.1/include
expat_EX_INCLUDE  := $(expat_LOC_INCLUDE)
expat_LOC_LIB := expat
expat_EX_LIB  := $(expat_LOC_LIB)
expat_INIT_FUNC := $$(eval $$(call ProductCommonVars,expat,,,expat))

