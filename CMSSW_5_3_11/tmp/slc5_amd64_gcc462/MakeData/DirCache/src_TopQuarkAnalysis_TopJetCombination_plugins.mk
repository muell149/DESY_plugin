ifeq ($(strip $(TopQuarkAnalysisTopJetCombinationPlugins)),)
TopQuarkAnalysisTopJetCombinationPlugins_files := $(patsubst src/TopQuarkAnalysis/TopJetCombination/plugins/%,%,$(foreach file,*.cc,$(eval xfile:=$(wildcard src/TopQuarkAnalysis/TopJetCombination/plugins/$(file)))$(if $(xfile),$(xfile),$(warning No such file exists: src/TopQuarkAnalysis/TopJetCombination/plugins/$(file). Please fix src/TopQuarkAnalysis/TopJetCombination/plugins/BuildFile.))))
TopQuarkAnalysisTopJetCombinationPlugins := self/src/TopQuarkAnalysis/TopJetCombination/plugins
TopQuarkAnalysisTopJetCombinationPlugins_BuildFile    := $(WORKINGDIR)/cache/bf/src/TopQuarkAnalysis/TopJetCombination/plugins/BuildFile
TopQuarkAnalysisTopJetCombinationPlugins_LOC_USE := self TopQuarkAnalysis/TopJetCombination AnalysisDataFormats/TopObjects DataFormats/PatCandidates TopQuarkAnalysis/TopTools PhysicsTools/MVAComputer PhysicsTools/MVATrainer CondCore/PluginSystem FWCore/ParameterSet FWCore/Framework rootcore rootmath
TopQuarkAnalysisTopJetCombinationPlugins_PRE_INIT_FUNC += $$(eval $$(call edmPlugin,TopQuarkAnalysisTopJetCombinationPlugins,TopQuarkAnalysisTopJetCombinationPlugins,$(SCRAMSTORENAME_LIB)))
TopQuarkAnalysisTopJetCombinationPlugins_PACKAGE := self/src/TopQuarkAnalysis/TopJetCombination/plugins
ALL_PRODS += TopQuarkAnalysisTopJetCombinationPlugins
TopQuarkAnalysisTopJetCombinationPlugins_INIT_FUNC        += $$(eval $$(call Library,TopQuarkAnalysisTopJetCombinationPlugins,src/TopQuarkAnalysis/TopJetCombination/plugins,src_TopQuarkAnalysis_TopJetCombination_plugins,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS)))
else
$(eval $(call MultipleWarningMsg,TopQuarkAnalysisTopJetCombinationPlugins,src/TopQuarkAnalysis/TopJetCombination/plugins))
endif
ALL_COMMONRULES += src_TopQuarkAnalysis_TopJetCombination_plugins
src_TopQuarkAnalysis_TopJetCombination_plugins_parent := TopQuarkAnalysis/TopJetCombination
src_TopQuarkAnalysis_TopJetCombination_plugins_INIT_FUNC += $$(eval $$(call CommonProductRules,src_TopQuarkAnalysis_TopJetCombination_plugins,src/TopQuarkAnalysis/TopJetCombination/plugins,PLUGINS))
