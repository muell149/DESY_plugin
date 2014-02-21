ifeq ($(strip $(BEAN/BEANmaker)),)
ALL_COMMONRULES += src_BEAN_BEANmaker_src
src_BEAN_BEANmaker_src_parent := BEAN/BEANmaker
src_BEAN_BEANmaker_src_INIT_FUNC := $$(eval $$(call CommonProductRules,src_BEAN_BEANmaker_src,src/BEAN/BEANmaker/src,LIBRARY))
BEANBEANmaker := self/BEAN/BEANmaker
BEAN/BEANmaker := BEANBEANmaker
BEANBEANmaker_files := $(patsubst src/BEAN/BEANmaker/src/%,%,$(wildcard $(foreach dir,src/BEAN/BEANmaker/src ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
BEANBEANmaker_BuildFile    := $(WORKINGDIR)/cache/bf/src/BEAN/BEANmaker/BuildFile
BEANBEANmaker_LOC_USE := self BEAN/Collections CommonTools/Utils DataFormats/FWLite DataFormats/Math root roottmva
BEANBEANmaker_EX_LIB   := BEANBEANmaker
BEANBEANmaker_EX_USE   := $(foreach d,$(BEANBEANmaker_LOC_USE),$(if $($(d)_LOC_FLAGS_NO_RECURSIVE_EXPORT),,$d))
BEANBEANmaker_PACKAGE := self/src/BEAN/BEANmaker/src
ALL_PRODS += BEANBEANmaker
BEANBEANmaker_INIT_FUNC        += $$(eval $$(call Library,BEANBEANmaker,src/BEAN/BEANmaker/src,src_BEAN_BEANmaker_src,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS)))
endif
