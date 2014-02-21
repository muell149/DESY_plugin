ifeq ($(strip $(CMGTools/External)),)
ALL_COMMONRULES += src_CMGTools_External_src
src_CMGTools_External_src_parent := CMGTools/External
src_CMGTools_External_src_INIT_FUNC := $$(eval $$(call CommonProductRules,src_CMGTools_External_src,src/CMGTools/External/src,LIBRARY))
CMGToolsExternal := self/CMGTools/External
CMGTools/External := CMGToolsExternal
CMGToolsExternal_files := $(patsubst src/CMGTools/External/src/%,%,$(wildcard $(foreach dir,src/CMGTools/External/src ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
CMGToolsExternal_BuildFile    := $(WORKINGDIR)/cache/bf/src/CMGTools/External/BuildFile
CMGToolsExternal_LOC_FLAGS_CXXFLAGS   := -g
CMGToolsExternal_LOC_USE := self root rootrflx rootcore roottmva FWCore/ParameterSet DataFormats/ParticleFlowCandidate DataFormats/PatCandidates DataFormats/JetReco fastjet
CMGToolsExternal_PRE_INIT_FUNC += $$(eval $$(call edmPlugin,CMGToolsExternalCapabilities,CMGToolsExternal,$(SCRAMSTORENAME_LIB)))
CMGToolsExternal_PRE_INIT_FUNC += $$(eval $$(call LCGDict,CMGToolsExternal,0,src/CMGTools/External/src/classes.h,src/CMGTools/External/src/classes_def.xml,$(SCRAMSTORENAME_LIB),$(GENREFLEX_ARGS) --fail_on_warnings,Capabilities))
CMGToolsExternal_EX_LIB   := CMGToolsExternal
CMGToolsExternal_EX_USE   := $(foreach d,$(CMGToolsExternal_LOC_USE),$(if $($(d)_LOC_FLAGS_NO_RECURSIVE_EXPORT),,$d))
CMGToolsExternal_PACKAGE := self/src/CMGTools/External/src
ALL_PRODS += CMGToolsExternal
CMGToolsExternal_INIT_FUNC        += $$(eval $$(call Library,CMGToolsExternal,src/CMGTools/External/src,src_CMGTools_External_src,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS)))
endif
