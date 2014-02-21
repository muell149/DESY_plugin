ifeq ($(strip $(CMGToolsExternalsplugins)),)
CMGToolsExternalsplugins_files := $(patsubst src/CMGTools/External/plugins/%,%,$(foreach file,*.cc,$(eval xfile:=$(wildcard src/CMGTools/External/plugins/$(file)))$(if $(xfile),$(xfile),$(warning No such file exists: src/CMGTools/External/plugins/$(file). Please fix src/CMGTools/External/plugins/BuildFile.))))
CMGToolsExternalsplugins := self/src/CMGTools/External/plugins
CMGToolsExternalsplugins_BuildFile    := $(WORKINGDIR)/cache/bf/src/CMGTools/External/plugins/BuildFile
CMGToolsExternalsplugins_LOC_USE := self FWCore/Framework FWCore/PluginManager FWCore/ParameterSet PhysicsTools/UtilAlgos DataFormats/PatCandidates DataFormats/EgammaCandidates CondFormats/PhysicsToolsObjects CondFormats/JetMETObjects JetMETCorrections/Objects CMGTools/External
CMGToolsExternalsplugins_PRE_INIT_FUNC += $$(eval $$(call edmPlugin,CMGToolsExternalsplugins,CMGToolsExternalsplugins,$(SCRAMSTORENAME_LIB)))
CMGToolsExternalsplugins_PACKAGE := self/src/CMGTools/External/plugins
ALL_PRODS += CMGToolsExternalsplugins
CMGToolsExternalsplugins_INIT_FUNC        += $$(eval $$(call Library,CMGToolsExternalsplugins,src/CMGTools/External/plugins,src_CMGTools_External_plugins,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS)))
else
$(eval $(call MultipleWarningMsg,CMGToolsExternalsplugins,src/CMGTools/External/plugins))
endif
ALL_COMMONRULES += src_CMGTools_External_plugins
src_CMGTools_External_plugins_parent := CMGTools/External
src_CMGTools_External_plugins_INIT_FUNC += $$(eval $$(call CommonProductRules,src_CMGTools_External_plugins,src/CMGTools/External/plugins,PLUGINS))
