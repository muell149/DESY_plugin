heppdt             := heppdt
ALL_TOOLS      += heppdt
heppdt_LOC_INCLUDE := /pscratch/osg/app/cmssoft/cms/slc5_amd64_gcc462/external/heppdt/3.03.00/include
heppdt_EX_INCLUDE  := $(heppdt_LOC_INCLUDE)
heppdt_LOC_LIB := HepPDT HepPID
heppdt_EX_LIB  := $(heppdt_LOC_LIB)
heppdt_INIT_FUNC := $$(eval $$(call ProductCommonVars,heppdt,,,heppdt))

