ifeq ($(strip $(TopAnalysisHiggsUtilsPlugins)),)
TopAnalysisHiggsUtilsPlugins_files := $(patsubst src/TopAnalysis/HiggsUtils/plugins/%,%,$(foreach file,*.cc,$(eval xfile:=$(wildcard src/TopAnalysis/HiggsUtils/plugins/$(file)))$(if $(xfile),$(xfile),$(warning No such file exists: src/TopAnalysis/HiggsUtils/plugins/$(file). Please fix src/TopAnalysis/HiggsUtils/plugins/BuildFile.))))
TopAnalysisHiggsUtilsPlugins := self/src/TopAnalysis/HiggsUtils/plugins
TopAnalysisHiggsUtilsPlugins_BuildFile    := $(WORKINGDIR)/cache/bf/src/TopAnalysis/HiggsUtils/plugins/BuildFile
TopAnalysisHiggsUtilsPlugins_LOC_USE := self FWCore/Framework FWCore/PluginManager FWCore/ParameterSet FWCore/Utilities DataFormats/HepMCCandidate FWCore/MessageLogger TopQuarkAnalysis/TopEventProducers TopAnalysis/HiggsUtils
TopAnalysisHiggsUtilsPlugins_PRE_INIT_FUNC += $$(eval $$(call edmPlugin,TopAnalysisHiggsUtilsPlugins,TopAnalysisHiggsUtilsPlugins,$(SCRAMSTORENAME_LIB)))
TopAnalysisHiggsUtilsPlugins_PACKAGE := self/src/TopAnalysis/HiggsUtils/plugins
ALL_PRODS += TopAnalysisHiggsUtilsPlugins
TopAnalysisHiggsUtilsPlugins_INIT_FUNC        += $$(eval $$(call Library,TopAnalysisHiggsUtilsPlugins,src/TopAnalysis/HiggsUtils/plugins,src_TopAnalysis_HiggsUtils_plugins,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS)))
else
$(eval $(call MultipleWarningMsg,TopAnalysisHiggsUtilsPlugins,src/TopAnalysis/HiggsUtils/plugins))
endif
ALL_COMMONRULES += src_TopAnalysis_HiggsUtils_plugins
src_TopAnalysis_HiggsUtils_plugins_parent := TopAnalysis/HiggsUtils
src_TopAnalysis_HiggsUtils_plugins_INIT_FUNC += $$(eval $$(call CommonProductRules,src_TopAnalysis_HiggsUtils_plugins,src/TopAnalysis/HiggsUtils/plugins,PLUGINS))
