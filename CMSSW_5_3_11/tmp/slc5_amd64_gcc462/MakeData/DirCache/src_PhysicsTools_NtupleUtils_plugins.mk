ifeq ($(strip $(PhysicsToolsNtupleUtilsPlugins)),)
PhysicsToolsNtupleUtilsPlugins_files := $(patsubst src/PhysicsTools/NtupleUtils/plugins/%,%,$(foreach file,*.cc,$(eval xfile:=$(wildcard src/PhysicsTools/NtupleUtils/plugins/$(file)))$(if $(xfile),$(xfile),$(warning No such file exists: src/PhysicsTools/NtupleUtils/plugins/$(file). Please fix src/PhysicsTools/NtupleUtils/plugins/BuildFile.))))
PhysicsToolsNtupleUtilsPlugins := self/src/PhysicsTools/NtupleUtils/plugins
PhysicsToolsNtupleUtilsPlugins_BuildFile    := $(WORKINGDIR)/cache/bf/src/PhysicsTools/NtupleUtils/plugins/BuildFile
PhysicsToolsNtupleUtilsPlugins_LOC_USE := self CommonTools/UtilAlgos HLTrigger/HLTcore PhysicsTools/NtupleUtils
PhysicsToolsNtupleUtilsPlugins_PRE_INIT_FUNC += $$(eval $$(call edmPlugin,PhysicsToolsNtupleUtilsPlugins,PhysicsToolsNtupleUtilsPlugins,$(SCRAMSTORENAME_LIB)))
PhysicsToolsNtupleUtilsPlugins_PACKAGE := self/src/PhysicsTools/NtupleUtils/plugins
ALL_PRODS += PhysicsToolsNtupleUtilsPlugins
PhysicsToolsNtupleUtilsPlugins_INIT_FUNC        += $$(eval $$(call Library,PhysicsToolsNtupleUtilsPlugins,src/PhysicsTools/NtupleUtils/plugins,src_PhysicsTools_NtupleUtils_plugins,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS)))
else
$(eval $(call MultipleWarningMsg,PhysicsToolsNtupleUtilsPlugins,src/PhysicsTools/NtupleUtils/plugins))
endif
ALL_COMMONRULES += src_PhysicsTools_NtupleUtils_plugins
src_PhysicsTools_NtupleUtils_plugins_parent := PhysicsTools/NtupleUtils
src_PhysicsTools_NtupleUtils_plugins_INIT_FUNC += $$(eval $$(call CommonProductRules,src_PhysicsTools_NtupleUtils_plugins,src/PhysicsTools/NtupleUtils/plugins,PLUGINS))
