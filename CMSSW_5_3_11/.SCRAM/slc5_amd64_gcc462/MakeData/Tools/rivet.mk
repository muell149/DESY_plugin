rivet             := rivet
ALL_TOOLS      += rivet
rivet_LOC_INCLUDE := /pscratch/osg/app/cmssoft/cms/slc5_amd64_gcc462/external/rivet/1.8.2/include
rivet_EX_INCLUDE  := $(rivet_LOC_INCLUDE)
rivet_LOC_LIB := Rivet
rivet_EX_LIB  := $(rivet_LOC_LIB)
rivet_INIT_FUNC := $$(eval $$(call ProductCommonVars,rivet,,,rivet))

