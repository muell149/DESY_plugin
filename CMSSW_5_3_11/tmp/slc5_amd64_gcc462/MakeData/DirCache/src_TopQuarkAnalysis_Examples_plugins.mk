ifeq ($(strip $(TopQuarkAnalysisExamplesPlugins)),)
TopQuarkAnalysisExamplesPlugins_files := $(patsubst src/TopQuarkAnalysis/Examples/plugins/%,%,$(foreach file,*.cc,$(eval xfile:=$(wildcard src/TopQuarkAnalysis/Examples/plugins/$(file)))$(if $(xfile),$(xfile),$(warning No such file exists: src/TopQuarkAnalysis/Examples/plugins/$(file). Please fix src/TopQuarkAnalysis/Examples/plugins/BuildFile.))))
TopQuarkAnalysisExamplesPlugins := self/src/TopQuarkAnalysis/Examples/plugins
TopQuarkAnalysisExamplesPlugins_BuildFile    := $(WORKINGDIR)/cache/bf/src/TopQuarkAnalysis/Examples/plugins/BuildFile
TopQuarkAnalysisExamplesPlugins_LOC_USE := self AnalysisDataFormats/TopObjects CommonTools/UtilAlgos FWCore/ServiceRegistry FWCore/MessageLogger FWCore/ParameterSet FWCore/Framework FWCore/Utilities root
TopQuarkAnalysisExamplesPlugins_PRE_INIT_FUNC += $$(eval $$(call edmPlugin,TopQuarkAnalysisExamplesPlugins,TopQuarkAnalysisExamplesPlugins,$(SCRAMSTORENAME_LIB)))
TopQuarkAnalysisExamplesPlugins_PACKAGE := self/src/TopQuarkAnalysis/Examples/plugins
ALL_PRODS += TopQuarkAnalysisExamplesPlugins
TopQuarkAnalysisExamplesPlugins_INIT_FUNC        += $$(eval $$(call Library,TopQuarkAnalysisExamplesPlugins,src/TopQuarkAnalysis/Examples/plugins,src_TopQuarkAnalysis_Examples_plugins,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS)))
else
$(eval $(call MultipleWarningMsg,TopQuarkAnalysisExamplesPlugins,src/TopQuarkAnalysis/Examples/plugins))
endif
ALL_COMMONRULES += src_TopQuarkAnalysis_Examples_plugins
src_TopQuarkAnalysis_Examples_plugins_parent := TopQuarkAnalysis/Examples
src_TopQuarkAnalysis_Examples_plugins_INIT_FUNC += $$(eval $$(call CommonProductRules,src_TopQuarkAnalysis_Examples_plugins,src/TopQuarkAnalysis/Examples/plugins,PLUGINS))
