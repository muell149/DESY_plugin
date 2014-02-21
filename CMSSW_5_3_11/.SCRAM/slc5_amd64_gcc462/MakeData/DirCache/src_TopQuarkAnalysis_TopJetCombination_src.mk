ifeq ($(strip $(TopQuarkAnalysis/TopJetCombination)),)
ALL_COMMONRULES += src_TopQuarkAnalysis_TopJetCombination_src
src_TopQuarkAnalysis_TopJetCombination_src_parent := TopQuarkAnalysis/TopJetCombination
src_TopQuarkAnalysis_TopJetCombination_src_INIT_FUNC := $$(eval $$(call CommonProductRules,src_TopQuarkAnalysis_TopJetCombination_src,src/TopQuarkAnalysis/TopJetCombination/src,LIBRARY))
TopQuarkAnalysisTopJetCombination := self/TopQuarkAnalysis/TopJetCombination
TopQuarkAnalysis/TopJetCombination := TopQuarkAnalysisTopJetCombination
TopQuarkAnalysisTopJetCombination_files := $(patsubst src/TopQuarkAnalysis/TopJetCombination/src/%,%,$(wildcard $(foreach dir,src/TopQuarkAnalysis/TopJetCombination/src ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
TopQuarkAnalysisTopJetCombination_BuildFile    := $(WORKINGDIR)/cache/bf/src/TopQuarkAnalysis/TopJetCombination/BuildFile
TopQuarkAnalysisTopJetCombination_LOC_USE := self AnalysisDataFormats/TopObjects TopQuarkAnalysis/TopTools FWCore/Framework
TopQuarkAnalysisTopJetCombination_EX_LIB   := TopQuarkAnalysisTopJetCombination
TopQuarkAnalysisTopJetCombination_EX_USE   := $(foreach d,$(TopQuarkAnalysisTopJetCombination_LOC_USE),$(if $($(d)_LOC_FLAGS_NO_RECURSIVE_EXPORT),,$d))
TopQuarkAnalysisTopJetCombination_PACKAGE := self/src/TopQuarkAnalysis/TopJetCombination/src
ALL_PRODS += TopQuarkAnalysisTopJetCombination
TopQuarkAnalysisTopJetCombination_INIT_FUNC        += $$(eval $$(call Library,TopQuarkAnalysisTopJetCombination,src/TopQuarkAnalysis/TopJetCombination/src,src_TopQuarkAnalysis_TopJetCombination_src,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS)))
endif
