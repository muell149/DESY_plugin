ifeq ($(strip $(TopQuarkAnalysisTopKinFitterPlugins)),)
TopQuarkAnalysisTopKinFitterPlugins_files := $(patsubst src/TopQuarkAnalysis/TopKinFitter/plugins/%,%,$(foreach file,*.cc,$(eval xfile:=$(wildcard src/TopQuarkAnalysis/TopKinFitter/plugins/$(file)))$(if $(xfile),$(xfile),$(warning No such file exists: src/TopQuarkAnalysis/TopKinFitter/plugins/$(file). Please fix src/TopQuarkAnalysis/TopKinFitter/plugins/BuildFile.))))
TopQuarkAnalysisTopKinFitterPlugins := self/src/TopQuarkAnalysis/TopKinFitter/plugins
TopQuarkAnalysisTopKinFitterPlugins_BuildFile    := $(WORKINGDIR)/cache/bf/src/TopQuarkAnalysis/TopKinFitter/plugins/BuildFile
TopQuarkAnalysisTopKinFitterPlugins_LOC_USE := self TopQuarkAnalysis/TopKinFitter PhysicsTools/KinFitter DataFormats/PatCandidates FWCore/ParameterSet FWCore/Framework
TopQuarkAnalysisTopKinFitterPlugins_PRE_INIT_FUNC += $$(eval $$(call edmPlugin,TopQuarkAnalysisTopKinFitterPlugins,TopQuarkAnalysisTopKinFitterPlugins,$(SCRAMSTORENAME_LIB)))
TopQuarkAnalysisTopKinFitterPlugins_PACKAGE := self/src/TopQuarkAnalysis/TopKinFitter/plugins
ALL_PRODS += TopQuarkAnalysisTopKinFitterPlugins
TopQuarkAnalysisTopKinFitterPlugins_INIT_FUNC        += $$(eval $$(call Library,TopQuarkAnalysisTopKinFitterPlugins,src/TopQuarkAnalysis/TopKinFitter/plugins,src_TopQuarkAnalysis_TopKinFitter_plugins,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS)))
else
$(eval $(call MultipleWarningMsg,TopQuarkAnalysisTopKinFitterPlugins,src/TopQuarkAnalysis/TopKinFitter/plugins))
endif
ALL_COMMONRULES += src_TopQuarkAnalysis_TopKinFitter_plugins
src_TopQuarkAnalysis_TopKinFitter_plugins_parent := TopQuarkAnalysis/TopKinFitter
src_TopQuarkAnalysis_TopKinFitter_plugins_INIT_FUNC += $$(eval $$(call CommonProductRules,src_TopQuarkAnalysis_TopKinFitter_plugins,src/TopQuarkAnalysis/TopKinFitter/plugins,PLUGINS))
