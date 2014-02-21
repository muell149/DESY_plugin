ifeq ($(strip $(TopQuarkAnalysis/TopHitFit)),)
ALL_COMMONRULES += src_TopQuarkAnalysis_TopHitFit_src
src_TopQuarkAnalysis_TopHitFit_src_parent := TopQuarkAnalysis/TopHitFit
src_TopQuarkAnalysis_TopHitFit_src_INIT_FUNC := $$(eval $$(call CommonProductRules,src_TopQuarkAnalysis_TopHitFit_src,src/TopQuarkAnalysis/TopHitFit/src,LIBRARY))
TopQuarkAnalysisTopHitFit := self/TopQuarkAnalysis/TopHitFit
TopQuarkAnalysis/TopHitFit := TopQuarkAnalysisTopHitFit
TopQuarkAnalysisTopHitFit_files := $(patsubst src/TopQuarkAnalysis/TopHitFit/src/%,%,$(wildcard $(foreach dir,src/TopQuarkAnalysis/TopHitFit/src ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
TopQuarkAnalysisTopHitFit_BuildFile    := $(WORKINGDIR)/cache/bf/src/TopQuarkAnalysis/TopHitFit/BuildFile
TopQuarkAnalysisTopHitFit_LOC_USE := self clhep root DataFormats/PatCandidates FWCore/ParameterSet
TopQuarkAnalysisTopHitFit_EX_LIB   := TopQuarkAnalysisTopHitFit
TopQuarkAnalysisTopHitFit_EX_USE   := $(foreach d,$(TopQuarkAnalysisTopHitFit_LOC_USE),$(if $($(d)_LOC_FLAGS_NO_RECURSIVE_EXPORT),,$d))
TopQuarkAnalysisTopHitFit_PACKAGE := self/src/TopQuarkAnalysis/TopHitFit/src
ALL_PRODS += TopQuarkAnalysisTopHitFit
TopQuarkAnalysisTopHitFit_INIT_FUNC        += $$(eval $$(call Library,TopQuarkAnalysisTopHitFit,src/TopQuarkAnalysis/TopHitFit/src,src_TopQuarkAnalysis_TopHitFit_src,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS)))
endif
