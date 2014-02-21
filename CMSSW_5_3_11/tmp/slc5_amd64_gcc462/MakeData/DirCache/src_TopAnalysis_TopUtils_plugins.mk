ifeq ($(strip $(TopAnalysisTopUtilsPlugins)),)
TopAnalysisTopUtilsPlugins_files := $(patsubst src/TopAnalysis/TopUtils/plugins/%,%,$(foreach file,*.cc,$(eval xfile:=$(wildcard src/TopAnalysis/TopUtils/plugins/$(file)))$(if $(xfile),$(xfile),$(warning No such file exists: src/TopAnalysis/TopUtils/plugins/$(file). Please fix src/TopAnalysis/TopUtils/plugins/BuildFile.))))
TopAnalysisTopUtilsPlugins := self/src/TopAnalysis/TopUtils/plugins
TopAnalysisTopUtilsPlugins_BuildFile    := $(WORKINGDIR)/cache/bf/src/TopAnalysis/TopUtils/plugins/BuildFile
TopAnalysisTopUtilsPlugins_LOC_USE := self JetMETCorrections/Objects CondCore/PluginSystem DataFormats/PatCandidates FWCore/ServiceRegistry FWCore/MessageLogger FWCore/ParameterSet FWCore/Framework FWCore/Utilities PhysicsTools/MVAComputer PhysicsTools/MVATrainer PhysicsTools/Utilities CommonTools/UtilAlgos PhysicsTools/PatUtils TopAnalysis/TopUtils SimDataFormats/GeneratorProducts root
TopAnalysisTopUtilsPlugins_PRE_INIT_FUNC += $$(eval $$(call edmPlugin,TopAnalysisTopUtilsPlugins,TopAnalysisTopUtilsPlugins,$(SCRAMSTORENAME_LIB)))
TopAnalysisTopUtilsPlugins_PACKAGE := self/src/TopAnalysis/TopUtils/plugins
ALL_PRODS += TopAnalysisTopUtilsPlugins
TopAnalysisTopUtilsPlugins_INIT_FUNC        += $$(eval $$(call Library,TopAnalysisTopUtilsPlugins,src/TopAnalysis/TopUtils/plugins,src_TopAnalysis_TopUtils_plugins,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS)))
else
$(eval $(call MultipleWarningMsg,TopAnalysisTopUtilsPlugins,src/TopAnalysis/TopUtils/plugins))
endif
ALL_COMMONRULES += src_TopAnalysis_TopUtils_plugins
src_TopAnalysis_TopUtils_plugins_parent := TopAnalysis/TopUtils
src_TopAnalysis_TopUtils_plugins_INIT_FUNC += $$(eval $$(call CommonProductRules,src_TopAnalysis_TopUtils_plugins,src/TopAnalysis/TopUtils/plugins,PLUGINS))
