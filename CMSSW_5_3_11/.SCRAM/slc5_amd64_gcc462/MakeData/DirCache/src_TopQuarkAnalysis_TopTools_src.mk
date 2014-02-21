ifeq ($(strip $(TopQuarkAnalysis/TopTools)),)
ALL_COMMONRULES += src_TopQuarkAnalysis_TopTools_src
src_TopQuarkAnalysis_TopTools_src_parent := TopQuarkAnalysis/TopTools
src_TopQuarkAnalysis_TopTools_src_INIT_FUNC := $$(eval $$(call CommonProductRules,src_TopQuarkAnalysis_TopTools_src,src/TopQuarkAnalysis/TopTools/src,LIBRARY))
TopQuarkAnalysisTopTools := self/TopQuarkAnalysis/TopTools
TopQuarkAnalysis/TopTools := TopQuarkAnalysisTopTools
TopQuarkAnalysisTopTools_files := $(patsubst src/TopQuarkAnalysis/TopTools/src/%,%,$(wildcard $(foreach dir,src/TopQuarkAnalysis/TopTools/src ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
TopQuarkAnalysisTopTools_BuildFile    := $(WORKINGDIR)/cache/bf/src/TopQuarkAnalysis/TopTools/BuildFile
TopQuarkAnalysisTopTools_LOC_USE := self rootgpad DataFormats/PatCandidates
TopQuarkAnalysisTopTools_EX_LIB   := TopQuarkAnalysisTopTools
TopQuarkAnalysisTopTools_EX_USE   := $(foreach d,$(TopQuarkAnalysisTopTools_LOC_USE),$(if $($(d)_LOC_FLAGS_NO_RECURSIVE_EXPORT),,$d))
TopQuarkAnalysisTopTools_PACKAGE := self/src/TopQuarkAnalysis/TopTools/src
ALL_PRODS += TopQuarkAnalysisTopTools
TopQuarkAnalysisTopTools_INIT_FUNC        += $$(eval $$(call Library,TopQuarkAnalysisTopTools,src/TopQuarkAnalysis/TopTools/src,src_TopQuarkAnalysis_TopTools_src,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS)))
endif
