ifeq ($(strip $(TopQuarkAnalysisTopToolsPlugins)),)
TopQuarkAnalysisTopToolsPlugins_files := $(patsubst src/TopQuarkAnalysis/TopTools/plugins/%,%,$(foreach file,*.cc,$(eval xfile:=$(wildcard src/TopQuarkAnalysis/TopTools/plugins/$(file)))$(if $(xfile),$(xfile),$(warning No such file exists: src/TopQuarkAnalysis/TopTools/plugins/$(file). Please fix src/TopQuarkAnalysis/TopTools/plugins/BuildFile.))))
TopQuarkAnalysisTopToolsPlugins := self/src/TopQuarkAnalysis/TopTools/plugins
TopQuarkAnalysisTopToolsPlugins_BuildFile    := $(WORKINGDIR)/cache/bf/src/TopQuarkAnalysis/TopTools/plugins/BuildFile
TopQuarkAnalysisTopToolsPlugins_LOC_USE := self AnalysisDataFormats/TopObjects DataFormats/PatCandidates DataFormats/VertexReco TopQuarkAnalysis/TopTools FWCore/ParameterSet FWCore/Framework HLTrigger/HLTcore boost root
TopQuarkAnalysisTopToolsPlugins_PRE_INIT_FUNC += $$(eval $$(call edmPlugin,TopQuarkAnalysisTopToolsPlugins,TopQuarkAnalysisTopToolsPlugins,$(SCRAMSTORENAME_LIB)))
TopQuarkAnalysisTopToolsPlugins_PACKAGE := self/src/TopQuarkAnalysis/TopTools/plugins
ALL_PRODS += TopQuarkAnalysisTopToolsPlugins
TopQuarkAnalysisTopToolsPlugins_INIT_FUNC        += $$(eval $$(call Library,TopQuarkAnalysisTopToolsPlugins,src/TopQuarkAnalysis/TopTools/plugins,src_TopQuarkAnalysis_TopTools_plugins,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS)))
else
$(eval $(call MultipleWarningMsg,TopQuarkAnalysisTopToolsPlugins,src/TopQuarkAnalysis/TopTools/plugins))
endif
ALL_COMMONRULES += src_TopQuarkAnalysis_TopTools_plugins
src_TopQuarkAnalysis_TopTools_plugins_parent := TopQuarkAnalysis/TopTools
src_TopQuarkAnalysis_TopTools_plugins_INIT_FUNC += $$(eval $$(call CommonProductRules,src_TopQuarkAnalysis_TopTools_plugins,src/TopQuarkAnalysis/TopTools/plugins,PLUGINS))
