ifeq ($(strip $(TopAnalysisTopFilterPlugins)),)
TopAnalysisTopFilterPlugins_files := $(patsubst src/TopAnalysis/TopFilter/plugins/%,%,$(foreach file,*.cc,$(eval xfile:=$(wildcard src/TopAnalysis/TopFilter/plugins/$(file)))$(if $(xfile),$(xfile),$(warning No such file exists: src/TopAnalysis/TopFilter/plugins/$(file). Please fix src/TopAnalysis/TopFilter/plugins/BuildFile.))))
TopAnalysisTopFilterPlugins := self/src/TopAnalysis/TopFilter/plugins
TopAnalysisTopFilterPlugins_BuildFile    := $(WORKINGDIR)/cache/bf/src/TopAnalysis/TopFilter/plugins/BuildFile
TopAnalysisTopFilterPlugins_LOC_USE := self AnalysisDataFormats/TopObjects DataFormats/PatCandidates PhysicsTools/CandUtils FWCore/MessageLogger FWCore/ParameterSet FWCore/Framework FWCore/Utilities
TopAnalysisTopFilterPlugins_PRE_INIT_FUNC += $$(eval $$(call edmPlugin,TopAnalysisTopFilterPlugins,TopAnalysisTopFilterPlugins,$(SCRAMSTORENAME_LIB)))
TopAnalysisTopFilterPlugins_PACKAGE := self/src/TopAnalysis/TopFilter/plugins
ALL_PRODS += TopAnalysisTopFilterPlugins
TopAnalysisTopFilterPlugins_INIT_FUNC        += $$(eval $$(call Library,TopAnalysisTopFilterPlugins,src/TopAnalysis/TopFilter/plugins,src_TopAnalysis_TopFilter_plugins,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS)))
else
$(eval $(call MultipleWarningMsg,TopAnalysisTopFilterPlugins,src/TopAnalysis/TopFilter/plugins))
endif
ALL_COMMONRULES += src_TopAnalysis_TopFilter_plugins
src_TopAnalysis_TopFilter_plugins_parent := TopAnalysis/TopFilter
src_TopAnalysis_TopFilter_plugins_INIT_FUNC += $$(eval $$(call CommonProductRules,src_TopAnalysis_TopFilter_plugins,src/TopAnalysis/TopFilter/plugins,PLUGINS))
