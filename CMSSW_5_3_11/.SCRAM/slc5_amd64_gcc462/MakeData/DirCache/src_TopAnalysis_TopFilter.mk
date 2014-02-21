ifeq ($(strip $(TopAnalysis/TopFilter)),)
src_TopAnalysis_TopFilter := self/TopAnalysis/TopFilter
TopAnalysis/TopFilter  := src_TopAnalysis_TopFilter
src_TopAnalysis_TopFilter_BuildFile    := $(WORKINGDIR)/cache/bf/src/TopAnalysis/TopFilter/BuildFile
src_TopAnalysis_TopFilter_EX_USE := FWCore/MessageLogger AnalysisDataFormats/TopObjects FWCore/Framework self TopAnalysis/TopUtils DataFormats/PatCandidates FWCore/Utilities FWCore/ParameterSet
ALL_EXTERNAL_PRODS += src_TopAnalysis_TopFilter
src_TopAnalysis_TopFilter_INIT_FUNC += $$(eval $$(call EmptyPackage,src_TopAnalysis_TopFilter,src/TopAnalysis/TopFilter))
endif

