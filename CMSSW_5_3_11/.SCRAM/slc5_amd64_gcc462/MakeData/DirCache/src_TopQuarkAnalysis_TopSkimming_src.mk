ifeq ($(strip $(TopQuarkAnalysis/TopSkimming)),)
ALL_COMMONRULES += src_TopQuarkAnalysis_TopSkimming_src
src_TopQuarkAnalysis_TopSkimming_src_parent := TopQuarkAnalysis/TopSkimming
src_TopQuarkAnalysis_TopSkimming_src_INIT_FUNC := $$(eval $$(call CommonProductRules,src_TopQuarkAnalysis_TopSkimming_src,src/TopQuarkAnalysis/TopSkimming/src,LIBRARY))
TopQuarkAnalysisTopSkimming := self/TopQuarkAnalysis/TopSkimming
TopQuarkAnalysis/TopSkimming := TopQuarkAnalysisTopSkimming
TopQuarkAnalysisTopSkimming_files := $(patsubst src/TopQuarkAnalysis/TopSkimming/src/%,%,$(wildcard $(foreach dir,src/TopQuarkAnalysis/TopSkimming/src ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
TopQuarkAnalysisTopSkimming_BuildFile    := $(WORKINGDIR)/cache/bf/src/TopQuarkAnalysis/TopSkimming/BuildFile
TopQuarkAnalysisTopSkimming_LOC_USE := self FWCore/ParameterSet
TopQuarkAnalysisTopSkimming_EX_LIB   := TopQuarkAnalysisTopSkimming
TopQuarkAnalysisTopSkimming_EX_USE   := $(foreach d,$(TopQuarkAnalysisTopSkimming_LOC_USE),$(if $($(d)_LOC_FLAGS_NO_RECURSIVE_EXPORT),,$d))
TopQuarkAnalysisTopSkimming_PACKAGE := self/src/TopQuarkAnalysis/TopSkimming/src
ALL_PRODS += TopQuarkAnalysisTopSkimming
TopQuarkAnalysisTopSkimming_INIT_FUNC        += $$(eval $$(call Library,TopQuarkAnalysisTopSkimming,src/TopQuarkAnalysis/TopSkimming/src,src_TopQuarkAnalysis_TopSkimming_src,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS)))
endif
