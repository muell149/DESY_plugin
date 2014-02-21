ifeq ($(strip $(TopQuarkAnalysis/TopKinFitter)),)
ALL_COMMONRULES += src_TopQuarkAnalysis_TopKinFitter_src
src_TopQuarkAnalysis_TopKinFitter_src_parent := TopQuarkAnalysis/TopKinFitter
src_TopQuarkAnalysis_TopKinFitter_src_INIT_FUNC := $$(eval $$(call CommonProductRules,src_TopQuarkAnalysis_TopKinFitter_src,src/TopQuarkAnalysis/TopKinFitter/src,LIBRARY))
TopQuarkAnalysisTopKinFitter := self/TopQuarkAnalysis/TopKinFitter
TopQuarkAnalysis/TopKinFitter := TopQuarkAnalysisTopKinFitter
TopQuarkAnalysisTopKinFitter_files := $(patsubst src/TopQuarkAnalysis/TopKinFitter/src/%,%,$(wildcard $(foreach dir,src/TopQuarkAnalysis/TopKinFitter/src ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
TopQuarkAnalysisTopKinFitter_BuildFile    := $(WORKINGDIR)/cache/bf/src/TopQuarkAnalysis/TopKinFitter/BuildFile
TopQuarkAnalysisTopKinFitter_LOC_USE := self CommonTools/Utils FWCore/ParameterSet PhysicsTools/KinFitter AnalysisDataFormats/TopObjects
TopQuarkAnalysisTopKinFitter_EX_LIB   := TopQuarkAnalysisTopKinFitter
TopQuarkAnalysisTopKinFitter_EX_USE   := $(foreach d,$(TopQuarkAnalysisTopKinFitter_LOC_USE),$(if $($(d)_LOC_FLAGS_NO_RECURSIVE_EXPORT),,$d))
TopQuarkAnalysisTopKinFitter_PACKAGE := self/src/TopQuarkAnalysis/TopKinFitter/src
ALL_PRODS += TopQuarkAnalysisTopKinFitter
TopQuarkAnalysisTopKinFitter_INIT_FUNC        += $$(eval $$(call Library,TopQuarkAnalysisTopKinFitter,src/TopQuarkAnalysis/TopKinFitter/src,src_TopQuarkAnalysis_TopKinFitter_src,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS)))
endif
