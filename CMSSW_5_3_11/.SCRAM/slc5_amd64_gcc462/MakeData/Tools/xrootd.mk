xrootd             := xrootd
ALL_TOOLS      += xrootd
xrootd_LOC_INCLUDE := /pscratch/osg/app/cmssoft/cms/slc5_amd64_gcc462/external/xrootd/3.1.0-cms2/include/xrootd
xrootd_EX_INCLUDE  := $(xrootd_LOC_INCLUDE)
xrootd_LOC_LIB := XrdUtils XrdClient
xrootd_EX_LIB  := $(xrootd_LOC_LIB)
xrootd_INIT_FUNC := $$(eval $$(call ProductCommonVars,xrootd,,,xrootd))

