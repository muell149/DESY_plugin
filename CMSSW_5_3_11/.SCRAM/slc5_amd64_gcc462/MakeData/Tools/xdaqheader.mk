xdaqheader             := xdaqheader
ALL_TOOLS      += xdaqheader
xdaqheader_LOC_INCLUDE := /pscratch/osg/app/cmssoft/cms/slc5_amd64_gcc462/external/xdaq/VR17173/include
xdaqheader_EX_INCLUDE  := $(xdaqheader_LOC_INCLUDE)
xdaqheader_INIT_FUNC := $$(eval $$(call ProductCommonVars,xdaqheader,,,xdaqheader))

