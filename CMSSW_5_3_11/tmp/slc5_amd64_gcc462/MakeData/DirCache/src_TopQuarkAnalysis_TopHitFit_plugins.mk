ifeq ($(strip $(TopQuarkAnalysisTopHitFitPlugins)),)
TopQuarkAnalysisTopHitFitPlugins_files := $(patsubst src/TopQuarkAnalysis/TopHitFit/plugins/%,%,$(foreach file,*.cc,$(eval xfile:=$(wildcard src/TopQuarkAnalysis/TopHitFit/plugins/$(file)))$(if $(xfile),$(xfile),$(warning No such file exists: src/TopQuarkAnalysis/TopHitFit/plugins/$(file). Please fix src/TopQuarkAnalysis/TopHitFit/plugins/BuildFile.))))
TopQuarkAnalysisTopHitFitPlugins := self/src/TopQuarkAnalysis/TopHitFit/plugins
TopQuarkAnalysisTopHitFitPlugins_BuildFile    := $(WORKINGDIR)/cache/bf/src/TopQuarkAnalysis/TopHitFit/plugins/BuildFile
TopQuarkAnalysisTopHitFitPlugins_LOC_USE := self TopQuarkAnalysis/TopHitFit DataFormats/PatCandidates FWCore/ParameterSet FWCore/Framework
TopQuarkAnalysisTopHitFitPlugins_PRE_INIT_FUNC += $$(eval $$(call edmPlugin,TopQuarkAnalysisTopHitFitPlugins,TopQuarkAnalysisTopHitFitPlugins,$(SCRAMSTORENAME_LIB)))
TopQuarkAnalysisTopHitFitPlugins_PACKAGE := self/src/TopQuarkAnalysis/TopHitFit/plugins
ALL_PRODS += TopQuarkAnalysisTopHitFitPlugins
TopQuarkAnalysisTopHitFitPlugins_INIT_FUNC        += $$(eval $$(call Library,TopQuarkAnalysisTopHitFitPlugins,src/TopQuarkAnalysis/TopHitFit/plugins,src_TopQuarkAnalysis_TopHitFit_plugins,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS)))
else
$(eval $(call MultipleWarningMsg,TopQuarkAnalysisTopHitFitPlugins,src/TopQuarkAnalysis/TopHitFit/plugins))
endif
ALL_COMMONRULES += src_TopQuarkAnalysis_TopHitFit_plugins
src_TopQuarkAnalysis_TopHitFit_plugins_parent := TopQuarkAnalysis/TopHitFit
src_TopQuarkAnalysis_TopHitFit_plugins_INIT_FUNC += $$(eval $$(call CommonProductRules,src_TopQuarkAnalysis_TopHitFit_plugins,src/TopQuarkAnalysis/TopHitFit/plugins,PLUGINS))
