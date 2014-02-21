ifeq ($(strip $(TopQuarkAnalysisTopSkimmingPlugins)),)
TopQuarkAnalysisTopSkimmingPlugins_files := $(patsubst src/TopQuarkAnalysis/TopSkimming/plugins/%,%,$(foreach file,*.cc,$(eval xfile:=$(wildcard src/TopQuarkAnalysis/TopSkimming/plugins/$(file)))$(if $(xfile),$(xfile),$(warning No such file exists: src/TopQuarkAnalysis/TopSkimming/plugins/$(file). Please fix src/TopQuarkAnalysis/TopSkimming/plugins/BuildFile.))))
TopQuarkAnalysisTopSkimmingPlugins := self/src/TopQuarkAnalysis/TopSkimming/plugins
TopQuarkAnalysisTopSkimmingPlugins_BuildFile    := $(WORKINGDIR)/cache/bf/src/TopQuarkAnalysis/TopSkimming/plugins/BuildFile
TopQuarkAnalysisTopSkimmingPlugins_LOC_USE := self FWCore/Framework TopQuarkAnalysis/TopSkimming
TopQuarkAnalysisTopSkimmingPlugins_PRE_INIT_FUNC += $$(eval $$(call edmPlugin,TopQuarkAnalysisTopSkimmingPlugins,TopQuarkAnalysisTopSkimmingPlugins,$(SCRAMSTORENAME_LIB)))
TopQuarkAnalysisTopSkimmingPlugins_PACKAGE := self/src/TopQuarkAnalysis/TopSkimming/plugins
ALL_PRODS += TopQuarkAnalysisTopSkimmingPlugins
TopQuarkAnalysisTopSkimmingPlugins_INIT_FUNC        += $$(eval $$(call Library,TopQuarkAnalysisTopSkimmingPlugins,src/TopQuarkAnalysis/TopSkimming/plugins,src_TopQuarkAnalysis_TopSkimming_plugins,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS)))
else
$(eval $(call MultipleWarningMsg,TopQuarkAnalysisTopSkimmingPlugins,src/TopQuarkAnalysis/TopSkimming/plugins))
endif
ALL_COMMONRULES += src_TopQuarkAnalysis_TopSkimming_plugins
src_TopQuarkAnalysis_TopSkimming_plugins_parent := TopQuarkAnalysis/TopSkimming
src_TopQuarkAnalysis_TopSkimming_plugins_INIT_FUNC += $$(eval $$(call CommonProductRules,src_TopQuarkAnalysis_TopSkimming_plugins,src/TopQuarkAnalysis/TopSkimming/plugins,PLUGINS))
