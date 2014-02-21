ifeq ($(strip $(TopQuarkAnalysis/TopObjectResolutions)),)
ALL_COMMONRULES += src_TopQuarkAnalysis_TopObjectResolutions_src
src_TopQuarkAnalysis_TopObjectResolutions_src_parent := TopQuarkAnalysis/TopObjectResolutions
src_TopQuarkAnalysis_TopObjectResolutions_src_INIT_FUNC := $$(eval $$(call CommonProductRules,src_TopQuarkAnalysis_TopObjectResolutions_src,src/TopQuarkAnalysis/TopObjectResolutions/src,LIBRARY))
TopQuarkAnalysisTopObjectResolutions := self/TopQuarkAnalysis/TopObjectResolutions
TopQuarkAnalysis/TopObjectResolutions := TopQuarkAnalysisTopObjectResolutions
TopQuarkAnalysisTopObjectResolutions_files := $(patsubst src/TopQuarkAnalysis/TopObjectResolutions/src/%,%,$(wildcard $(foreach dir,src/TopQuarkAnalysis/TopObjectResolutions/src ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
TopQuarkAnalysisTopObjectResolutions_BuildFile    := $(WORKINGDIR)/cache/bf/src/TopQuarkAnalysis/TopObjectResolutions/BuildFile
TopQuarkAnalysisTopObjectResolutions_LOC_USE := self CommonTools/UtilAlgos FWCore/Framework FWCore/PluginManager FWCore/ParameterSet root AnalysisDataFormats/TopObjects
TopQuarkAnalysisTopObjectResolutions_EX_USE   := $(foreach d,$(TopQuarkAnalysisTopObjectResolutions_LOC_USE),$(if $($(d)_LOC_FLAGS_NO_RECURSIVE_EXPORT),,$d))
TopQuarkAnalysisTopObjectResolutions_PACKAGE := self/src/TopQuarkAnalysis/TopObjectResolutions/src
ALL_PRODS += TopQuarkAnalysisTopObjectResolutions
TopQuarkAnalysisTopObjectResolutions_INIT_FUNC        += $$(eval $$(call Library,TopQuarkAnalysisTopObjectResolutions,src/TopQuarkAnalysis/TopObjectResolutions/src,src_TopQuarkAnalysis_TopObjectResolutions_src,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS)))
endif
