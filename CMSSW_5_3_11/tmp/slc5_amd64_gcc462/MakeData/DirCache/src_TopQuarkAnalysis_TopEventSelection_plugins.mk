ifeq ($(strip $(TopQuarkAnalysisTopEventSelectionPlugins)),)
TopQuarkAnalysisTopEventSelectionPlugins_files := $(patsubst src/TopQuarkAnalysis/TopEventSelection/plugins/%,%,$(foreach file,*.cc,$(eval xfile:=$(wildcard src/TopQuarkAnalysis/TopEventSelection/plugins/$(file)))$(if $(xfile),$(xfile),$(warning No such file exists: src/TopQuarkAnalysis/TopEventSelection/plugins/$(file). Please fix src/TopQuarkAnalysis/TopEventSelection/plugins/BuildFile.))))
TopQuarkAnalysisTopEventSelectionPlugins := self/src/TopQuarkAnalysis/TopEventSelection/plugins
TopQuarkAnalysisTopEventSelectionPlugins_BuildFile    := $(WORKINGDIR)/cache/bf/src/TopQuarkAnalysis/TopEventSelection/plugins/BuildFile
TopQuarkAnalysisTopEventSelectionPlugins_LOC_USE := self TopQuarkAnalysis/TopEventSelection AnalysisDataFormats/TopObjects DataFormats/RecoCandidate DataFormats/PatCandidates TopQuarkAnalysis/TopTools PhysicsTools/MVAComputer PhysicsTools/MVATrainer CondCore/PluginSystem FWCore/ParameterSet FWCore/Framework rootcore rootmath
TopQuarkAnalysisTopEventSelectionPlugins_PRE_INIT_FUNC += $$(eval $$(call edmPlugin,TopQuarkAnalysisTopEventSelectionPlugins,TopQuarkAnalysisTopEventSelectionPlugins,$(SCRAMSTORENAME_LIB)))
TopQuarkAnalysisTopEventSelectionPlugins_PACKAGE := self/src/TopQuarkAnalysis/TopEventSelection/plugins
ALL_PRODS += TopQuarkAnalysisTopEventSelectionPlugins
TopQuarkAnalysisTopEventSelectionPlugins_INIT_FUNC        += $$(eval $$(call Library,TopQuarkAnalysisTopEventSelectionPlugins,src/TopQuarkAnalysis/TopEventSelection/plugins,src_TopQuarkAnalysis_TopEventSelection_plugins,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS)))
else
$(eval $(call MultipleWarningMsg,TopQuarkAnalysisTopEventSelectionPlugins,src/TopQuarkAnalysis/TopEventSelection/plugins))
endif
ALL_COMMONRULES += src_TopQuarkAnalysis_TopEventSelection_plugins
src_TopQuarkAnalysis_TopEventSelection_plugins_parent := TopQuarkAnalysis/TopEventSelection
src_TopQuarkAnalysis_TopEventSelection_plugins_INIT_FUNC += $$(eval $$(call CommonProductRules,src_TopQuarkAnalysis_TopEventSelection_plugins,src/TopQuarkAnalysis/TopEventSelection/plugins,PLUGINS))
