ifeq ($(strip $(BEAN/Collections)),)
ALL_COMMONRULES += src_BEAN_Collections_src
src_BEAN_Collections_src_parent := BEAN/Collections
src_BEAN_Collections_src_INIT_FUNC := $$(eval $$(call CommonProductRules,src_BEAN_Collections_src,src/BEAN/Collections/src,LIBRARY))
BEANCollections := self/BEAN/Collections
BEAN/Collections := BEANCollections
BEANCollections_files := $(patsubst src/BEAN/Collections/src/%,%,$(wildcard $(foreach dir,src/BEAN/Collections/src ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
BEANCollections_BuildFile    := $(WORKINGDIR)/cache/bf/src/BEAN/Collections/BuildFile
BEANCollections_LOC_USE := self DataFormats/Common rootrflx
BEANCollections_PRE_INIT_FUNC += $$(eval $$(call edmPlugin,BEANCollectionsCapabilities,BEANCollections,$(SCRAMSTORENAME_LIB)))
BEANCollections_PRE_INIT_FUNC += $$(eval $$(call LCGDict,BEANCollections,0,src/BEAN/Collections/src/classes.h,src/BEAN/Collections/src/classes_def.xml,$(SCRAMSTORENAME_LIB),$(GENREFLEX_ARGS) --fail_on_warnings,Capabilities))
BEANCollections_EX_LIB   := BEANCollections
BEANCollections_EX_USE   := $(foreach d,$(BEANCollections_LOC_USE),$(if $($(d)_LOC_FLAGS_NO_RECURSIVE_EXPORT),,$d))
BEANCollections_PACKAGE := self/src/BEAN/Collections/src
ALL_PRODS += BEANCollections
BEANCollections_INIT_FUNC        += $$(eval $$(call Library,BEANCollections,src/BEAN/Collections/src,src_BEAN_Collections_src,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS)))
endif
