ifeq ($(strip $(TopQuarkAnalysis/TopEventProducers)),)
ALL_COMMONRULES += src_TopQuarkAnalysis_TopEventProducers_src
src_TopQuarkAnalysis_TopEventProducers_src_parent := TopQuarkAnalysis/TopEventProducers
src_TopQuarkAnalysis_TopEventProducers_src_INIT_FUNC := $$(eval $$(call CommonProductRules,src_TopQuarkAnalysis_TopEventProducers_src,src/TopQuarkAnalysis/TopEventProducers/src,LIBRARY))
TopQuarkAnalysisTopEventProducers := self/TopQuarkAnalysis/TopEventProducers
TopQuarkAnalysis/TopEventProducers := TopQuarkAnalysisTopEventProducers
TopQuarkAnalysisTopEventProducers_files := $(patsubst src/TopQuarkAnalysis/TopEventProducers/src/%,%,$(wildcard $(foreach dir,src/TopQuarkAnalysis/TopEventProducers/src ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
TopQuarkAnalysisTopEventProducers_BuildFile    := $(WORKINGDIR)/cache/bf/src/TopQuarkAnalysis/TopEventProducers/BuildFile
TopQuarkAnalysisTopEventProducers_LOC_USE := self FWCore/Framework FWCore/ParameterSet CommonTools/Utils DataFormats/PatCandidates AnalysisDataFormats/TopObjects TopQuarkAnalysis/TopSkimming TopQuarkAnalysis/TopKinFitter TopQuarkAnalysis/TopHitFit TopQuarkAnalysis/TopJetCombination TopQuarkAnalysis/TopEventSelection
TopQuarkAnalysisTopEventProducers_PRE_INIT_FUNC += $$(eval $$(call edmPlugin,TopQuarkAnalysisTopEventProducers,TopQuarkAnalysisTopEventProducers,$(SCRAMSTORENAME_LIB)))
TopQuarkAnalysisTopEventProducers_PACKAGE := self/src/TopQuarkAnalysis/TopEventProducers/src
ALL_PRODS += TopQuarkAnalysisTopEventProducers
TopQuarkAnalysisTopEventProducers_INIT_FUNC        += $$(eval $$(call Library,TopQuarkAnalysisTopEventProducers,src/TopQuarkAnalysis/TopEventProducers/src,src_TopQuarkAnalysis_TopEventProducers_src,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS)))
endif
