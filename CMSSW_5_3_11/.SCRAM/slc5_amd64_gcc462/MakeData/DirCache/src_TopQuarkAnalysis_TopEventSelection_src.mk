ifeq ($(strip $(TopQuarkAnalysis/TopEventSelection)),)
ALL_COMMONRULES += src_TopQuarkAnalysis_TopEventSelection_src
src_TopQuarkAnalysis_TopEventSelection_src_parent := TopQuarkAnalysis/TopEventSelection
src_TopQuarkAnalysis_TopEventSelection_src_INIT_FUNC := $$(eval $$(call CommonProductRules,src_TopQuarkAnalysis_TopEventSelection_src,src/TopQuarkAnalysis/TopEventSelection/src,LIBRARY))
TopQuarkAnalysisTopEventSelection := self/TopQuarkAnalysis/TopEventSelection
TopQuarkAnalysis/TopEventSelection := TopQuarkAnalysisTopEventSelection
TopQuarkAnalysisTopEventSelection_files := $(patsubst src/TopQuarkAnalysis/TopEventSelection/src/%,%,$(wildcard $(foreach dir,src/TopQuarkAnalysis/TopEventSelection/src ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
TopQuarkAnalysisTopEventSelection_BuildFile    := $(WORKINGDIR)/cache/bf/src/TopQuarkAnalysis/TopEventSelection/BuildFile
TopQuarkAnalysisTopEventSelection_LOC_USE := self FWCore/Framework PhysicsTools/CandUtils TopQuarkAnalysis/TopTools DataFormats/PatCandidates AnalysisDataFormats/TopObjects
TopQuarkAnalysisTopEventSelection_EX_LIB   := TopQuarkAnalysisTopEventSelection
TopQuarkAnalysisTopEventSelection_EX_USE   := $(foreach d,$(TopQuarkAnalysisTopEventSelection_LOC_USE),$(if $($(d)_LOC_FLAGS_NO_RECURSIVE_EXPORT),,$d))
TopQuarkAnalysisTopEventSelection_PACKAGE := self/src/TopQuarkAnalysis/TopEventSelection/src
ALL_PRODS += TopQuarkAnalysisTopEventSelection
TopQuarkAnalysisTopEventSelection_INIT_FUNC        += $$(eval $$(call Library,TopQuarkAnalysisTopEventSelection,src/TopQuarkAnalysis/TopEventSelection/src,src_TopQuarkAnalysis_TopEventSelection_src,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS)))
endif
