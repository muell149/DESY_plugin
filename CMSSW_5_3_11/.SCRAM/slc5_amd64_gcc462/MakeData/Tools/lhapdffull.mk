lhapdffull             := lhapdffull
ALL_TOOLS      += lhapdffull
lhapdffull_LOC_INCLUDE := /pscratch/osg/app/cmssoft/cms/slc5_amd64_gcc462/external/lhapdf/5.8.5-cms2/include
lhapdffull_EX_INCLUDE  := $(lhapdffull_LOC_INCLUDE)
lhapdffull_LOC_LIB := LHAPDF
lhapdffull_EX_LIB  := $(lhapdffull_LOC_LIB)
lhapdffull_LOC_USE := f77compiler
lhapdffull_EX_USE  := $(lhapdffull_LOC_USE)
lhapdffull_INIT_FUNC := $$(eval $$(call ProductCommonVars,lhapdffull,,,lhapdffull))

