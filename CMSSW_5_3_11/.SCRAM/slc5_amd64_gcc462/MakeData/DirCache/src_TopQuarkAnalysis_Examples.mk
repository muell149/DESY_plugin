ifeq ($(strip $(TopQuarkAnalysis/Examples)),)
src_TopQuarkAnalysis_Examples := self/TopQuarkAnalysis/Examples
TopQuarkAnalysis/Examples  := src_TopQuarkAnalysis_Examples
src_TopQuarkAnalysis_Examples_BuildFile    := $(WORKINGDIR)/cache/bf/src/TopQuarkAnalysis/Examples/BuildFile
src_TopQuarkAnalysis_Examples_EX_USE := DataFormats/Provenance AnalysisDataFormats/TopObjects FWCore/Framework self DataFormats/RecoCandidate DataFormats/Candidate CommonTools/UtilAlgos FWCore/ServiceRegistry CommonTools/CandUtils root DataFormats/PatCandidates
ALL_EXTERNAL_PRODS += src_TopQuarkAnalysis_Examples
src_TopQuarkAnalysis_Examples_INIT_FUNC += $$(eval $$(call EmptyPackage,src_TopQuarkAnalysis_Examples,src/TopQuarkAnalysis/Examples))
endif

