photos_headers             := photos_headers
ALL_TOOLS      += photos_headers
photos_headers_LOC_INCLUDE := /pscratch/osg/app/cmssoft/cms/slc5_amd64_gcc462/external/photos/215.5/include
photos_headers_EX_INCLUDE  := $(photos_headers_LOC_INCLUDE)
photos_headers_INIT_FUNC := $$(eval $$(call ProductCommonVars,photos_headers,,,photos_headers))

