ifeq ($(strip $(TopAnalysisTopAnalyzerPlugins)),)
TopAnalysisTopAnalyzerPlugins_files := $(patsubst src/TopAnalysis/TopAnalyzer/plugins/%,%,$(foreach file,*.cc,$(eval xfile:=$(wildcard src/TopAnalysis/TopAnalyzer/plugins/$(file)))$(if $(xfile),$(xfile),$(warning No such file exists: src/TopAnalysis/TopAnalyzer/plugins/$(file). Please fix src/TopAnalysis/TopAnalyzer/plugins/BuildFile.))))
TopAnalysisTopAnalyzerPlugins := self/src/TopAnalysis/TopAnalyzer/plugins
TopAnalysisTopAnalyzerPlugins_BuildFile    := $(WORKINGDIR)/cache/bf/src/TopAnalysis/TopAnalyzer/plugins/BuildFile
TopAnalysisTopAnalyzerPlugins_LOC_USE := self TopAnalysis/TopUtils TopAnalysis/HiggsUtils TopAnalysis/TopAnalyzer FWCore/MessageLogger FWCore/ParameterSet FWCore/Framework FWCore/Utilities
TopAnalysisTopAnalyzerPlugins_PRE_INIT_FUNC += $$(eval $$(call edmPlugin,TopAnalysisTopAnalyzerPlugins,TopAnalysisTopAnalyzerPlugins,$(SCRAMSTORENAME_LIB)))
TopAnalysisTopAnalyzerPlugins_PACKAGE := self/src/TopAnalysis/TopAnalyzer/plugins
ALL_PRODS += TopAnalysisTopAnalyzerPlugins
TopAnalysisTopAnalyzerPlugins_INIT_FUNC        += $$(eval $$(call Library,TopAnalysisTopAnalyzerPlugins,src/TopAnalysis/TopAnalyzer/plugins,src_TopAnalysis_TopAnalyzer_plugins,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS)))
else
$(eval $(call MultipleWarningMsg,TopAnalysisTopAnalyzerPlugins,src/TopAnalysis/TopAnalyzer/plugins))
endif
ALL_COMMONRULES += src_TopAnalysis_TopAnalyzer_plugins
src_TopAnalysis_TopAnalyzer_plugins_parent := TopAnalysis/TopAnalyzer
src_TopAnalysis_TopAnalyzer_plugins_INIT_FUNC += $$(eval $$(call CommonProductRules,src_TopAnalysis_TopAnalyzer_plugins,src/TopAnalysis/TopAnalyzer/plugins,PLUGINS))
