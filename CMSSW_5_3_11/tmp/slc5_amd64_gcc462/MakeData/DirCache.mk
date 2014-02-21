ALL_SUBSYSTEMS+=$(patsubst src/%,%,src/TopAnalysis)
subdirs_src_TopAnalysis = src_TopAnalysis_Configuration src_TopAnalysis_HiggsUtils src_TopAnalysis_TopAnalyzer src_TopAnalysis_TopFilter src_TopAnalysis_TopUtils src_TopAnalysis_ZTopUtils
ALL_PACKAGES += $(patsubst src/%,%,src/TopAnalysis/Configuration)
subdirs_src_TopAnalysis_Configuration := src_TopAnalysis_Configuration_doc src_TopAnalysis_Configuration_plot src_TopAnalysis_Configuration_python src_TopAnalysis_Configuration_test
ifeq ($(strip $(PyTopAnalysisConfiguration)),)
PyTopAnalysisConfiguration := self/src/TopAnalysis/Configuration/python
PyTopAnalysisConfiguration_files := $(patsubst src/TopAnalysis/Configuration/python/%,%,$(wildcard $(foreach dir,src/TopAnalysis/Configuration/python ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
PyTopAnalysisConfiguration_LOC_USE := self
ALL_PYTHON_DIRS += $(patsubst src/%,%,src/TopAnalysis/Configuration/python)
ALL_PRODS += PyTopAnalysisConfiguration
src_TopAnalysis_Configuration_python_parent := TopAnalysis/Configuration
PyTopAnalysisConfiguration_INIT_FUNC        += $$(eval $$(call PythonProduct,PyTopAnalysisConfiguration,src/TopAnalysis/Configuration/python,src_TopAnalysis_Configuration_python,1,1,$(SCRAMSTORENAME_PYTHON),$(SCRAMSTORENAME_LIB),,))
else
$(eval $(call MultipleWarningMsg,PyTopAnalysisConfiguration,src/TopAnalysis/Configuration/python))
endif
ALL_COMMONRULES += src_TopAnalysis_Configuration_python
src_TopAnalysis_Configuration_python_INIT_FUNC += $$(eval $$(call CommonProductRules,src_TopAnalysis_Configuration_python,src/TopAnalysis/Configuration/python,PYTHON))
ALL_COMMONRULES += src_TopAnalysis_Configuration_test
src_TopAnalysis_Configuration_test_parent := TopAnalysis/Configuration
src_TopAnalysis_Configuration_test_INIT_FUNC += $$(eval $$(call CommonProductRules,src_TopAnalysis_Configuration_test,src/TopAnalysis/Configuration/test,TEST))
ALL_PACKAGES += $(patsubst src/%,%,src/TopAnalysis/HiggsUtils)
subdirs_src_TopAnalysis_HiggsUtils := src_TopAnalysis_HiggsUtils_plugins src_TopAnalysis_HiggsUtils_python src_TopAnalysis_HiggsUtils_src src_TopAnalysis_HiggsUtils_test
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
ifeq ($(strip $(PyTopAnalysisHiggsUtils)),)
PyTopAnalysisHiggsUtils := self/src/TopAnalysis/HiggsUtils/python
PyTopAnalysisHiggsUtils_files := $(patsubst src/TopAnalysis/HiggsUtils/python/%,%,$(wildcard $(foreach dir,src/TopAnalysis/HiggsUtils/python ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
PyTopAnalysisHiggsUtils_LOC_USE := self
ALL_PYTHON_DIRS += $(patsubst src/%,%,src/TopAnalysis/HiggsUtils/python)
ALL_PRODS += PyTopAnalysisHiggsUtils
src_TopAnalysis_HiggsUtils_python_parent := TopAnalysis/HiggsUtils
PyTopAnalysisHiggsUtils_INIT_FUNC        += $$(eval $$(call PythonProduct,PyTopAnalysisHiggsUtils,src/TopAnalysis/HiggsUtils/python,src_TopAnalysis_HiggsUtils_python,1,1,$(SCRAMSTORENAME_PYTHON),$(SCRAMSTORENAME_LIB),,))
else
$(eval $(call MultipleWarningMsg,PyTopAnalysisHiggsUtils,src/TopAnalysis/HiggsUtils/python))
endif
ALL_COMMONRULES += src_TopAnalysis_HiggsUtils_python
src_TopAnalysis_HiggsUtils_python_INIT_FUNC += $$(eval $$(call CommonProductRules,src_TopAnalysis_HiggsUtils_python,src/TopAnalysis/HiggsUtils/python,PYTHON))
ALL_COMMONRULES += src_TopAnalysis_HiggsUtils_test
src_TopAnalysis_HiggsUtils_test_parent := TopAnalysis/HiggsUtils
src_TopAnalysis_HiggsUtils_test_INIT_FUNC += $$(eval $$(call CommonProductRules,src_TopAnalysis_HiggsUtils_test,src/TopAnalysis/HiggsUtils/test,TEST))
ALL_PACKAGES += $(patsubst src/%,%,src/TopAnalysis/TopAnalyzer)
subdirs_src_TopAnalysis_TopAnalyzer := src_TopAnalysis_TopAnalyzer_bin src_TopAnalysis_TopAnalyzer_interface src_TopAnalysis_TopAnalyzer_plugins src_TopAnalysis_TopAnalyzer_python src_TopAnalysis_TopAnalyzer_src src_TopAnalysis_TopAnalyzer_test
ifeq ($(strip $(FWLiteMuonResolutionAnalyzer)),)
FWLiteMuonResolutionAnalyzer_files := $(patsubst src/TopAnalysis/TopAnalyzer/bin/%,%,$(foreach file,FWLiteMuonResolutionAnalyzer.cc,$(eval xfile:=$(wildcard src/TopAnalysis/TopAnalyzer/bin/$(file)))$(if $(xfile),$(xfile),$(warning No such file exists: src/TopAnalysis/TopAnalyzer/bin/$(file). Please fix src/TopAnalysis/TopAnalyzer/bin/BuildFile.))))
FWLiteMuonResolutionAnalyzer := self/src/TopAnalysis/TopAnalyzer/bin
FWLiteMuonResolutionAnalyzer_BuildFile    := $(WORKINGDIR)/cache/bf/src/TopAnalysis/TopAnalyzer/bin/BuildFile
FWLiteMuonResolutionAnalyzer_LOC_USE := self AnalysisDataFormats/TopObjects TopAnalysis/TopAnalyzer DataFormats/FWLite FWCore/Framework FWCore/FWLite rootcintex root
FWLiteMuonResolutionAnalyzer_PACKAGE := self/src/TopAnalysis/TopAnalyzer/bin
ALL_PRODS += FWLiteMuonResolutionAnalyzer
FWLiteMuonResolutionAnalyzer_INIT_FUNC        += $$(eval $$(call Binary,FWLiteMuonResolutionAnalyzer,src/TopAnalysis/TopAnalyzer/bin,src_TopAnalysis_TopAnalyzer_bin,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_BIN),bin,$(SCRAMSTORENAME_LOGS)))
else
$(eval $(call MultipleWarningMsg,FWLiteMuonResolutionAnalyzer,src/TopAnalysis/TopAnalyzer/bin))
endif
ifeq ($(strip $(FWLiteTopKinematicsRecAnalyzer)),)
FWLiteTopKinematicsRecAnalyzer_files := $(patsubst src/TopAnalysis/TopAnalyzer/bin/%,%,$(foreach file,FWLiteTopKinematicsRecAnalyzer.cc,$(eval xfile:=$(wildcard src/TopAnalysis/TopAnalyzer/bin/$(file)))$(if $(xfile),$(xfile),$(warning No such file exists: src/TopAnalysis/TopAnalyzer/bin/$(file). Please fix src/TopAnalysis/TopAnalyzer/bin/BuildFile.))))
FWLiteTopKinematicsRecAnalyzer := self/src/TopAnalysis/TopAnalyzer/bin
FWLiteTopKinematicsRecAnalyzer_BuildFile    := $(WORKINGDIR)/cache/bf/src/TopAnalysis/TopAnalyzer/bin/BuildFile
FWLiteTopKinematicsRecAnalyzer_LOC_USE := self AnalysisDataFormats/TopObjects TopAnalysis/TopAnalyzer DataFormats/FWLite FWCore/Framework FWCore/FWLite rootcintex root
FWLiteTopKinematicsRecAnalyzer_PACKAGE := self/src/TopAnalysis/TopAnalyzer/bin
ALL_PRODS += FWLiteTopKinematicsRecAnalyzer
FWLiteTopKinematicsRecAnalyzer_INIT_FUNC        += $$(eval $$(call Binary,FWLiteTopKinematicsRecAnalyzer,src/TopAnalysis/TopAnalyzer/bin,src_TopAnalysis_TopAnalyzer_bin,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_BIN),bin,$(SCRAMSTORENAME_LOGS)))
else
$(eval $(call MultipleWarningMsg,FWLiteTopKinematicsRecAnalyzer,src/TopAnalysis/TopAnalyzer/bin))
endif
ifeq ($(strip $(FWLiteTopKinematicsGenAnalyzer)),)
FWLiteTopKinematicsGenAnalyzer_files := $(patsubst src/TopAnalysis/TopAnalyzer/bin/%,%,$(foreach file,FWLiteTopKinematicsGenAnalyzer.cc,$(eval xfile:=$(wildcard src/TopAnalysis/TopAnalyzer/bin/$(file)))$(if $(xfile),$(xfile),$(warning No such file exists: src/TopAnalysis/TopAnalyzer/bin/$(file). Please fix src/TopAnalysis/TopAnalyzer/bin/BuildFile.))))
FWLiteTopKinematicsGenAnalyzer := self/src/TopAnalysis/TopAnalyzer/bin
FWLiteTopKinematicsGenAnalyzer_BuildFile    := $(WORKINGDIR)/cache/bf/src/TopAnalysis/TopAnalyzer/bin/BuildFile
FWLiteTopKinematicsGenAnalyzer_LOC_USE := self AnalysisDataFormats/TopObjects TopAnalysis/TopAnalyzer DataFormats/FWLite FWCore/Framework FWCore/FWLite rootcintex root
FWLiteTopKinematicsGenAnalyzer_PACKAGE := self/src/TopAnalysis/TopAnalyzer/bin
ALL_PRODS += FWLiteTopKinematicsGenAnalyzer
FWLiteTopKinematicsGenAnalyzer_INIT_FUNC        += $$(eval $$(call Binary,FWLiteTopKinematicsGenAnalyzer,src/TopAnalysis/TopAnalyzer/bin,src_TopAnalysis_TopAnalyzer_bin,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_BIN),bin,$(SCRAMSTORENAME_LOGS)))
else
$(eval $(call MultipleWarningMsg,FWLiteTopKinematicsGenAnalyzer,src/TopAnalysis/TopAnalyzer/bin))
endif
ifeq ($(strip $(FWLiteMuonKinematicsAnalyzer)),)
FWLiteMuonKinematicsAnalyzer_files := $(patsubst src/TopAnalysis/TopAnalyzer/bin/%,%,$(foreach file,FWLiteMuonKinematicsAnalyzer.cc,$(eval xfile:=$(wildcard src/TopAnalysis/TopAnalyzer/bin/$(file)))$(if $(xfile),$(xfile),$(warning No such file exists: src/TopAnalysis/TopAnalyzer/bin/$(file). Please fix src/TopAnalysis/TopAnalyzer/bin/BuildFile.))))
FWLiteMuonKinematicsAnalyzer := self/src/TopAnalysis/TopAnalyzer/bin
FWLiteMuonKinematicsAnalyzer_BuildFile    := $(WORKINGDIR)/cache/bf/src/TopAnalysis/TopAnalyzer/bin/BuildFile
FWLiteMuonKinematicsAnalyzer_LOC_USE := self AnalysisDataFormats/TopObjects TopAnalysis/TopAnalyzer DataFormats/FWLite FWCore/Framework FWCore/FWLite rootcintex root
FWLiteMuonKinematicsAnalyzer_PACKAGE := self/src/TopAnalysis/TopAnalyzer/bin
ALL_PRODS += FWLiteMuonKinematicsAnalyzer
FWLiteMuonKinematicsAnalyzer_INIT_FUNC        += $$(eval $$(call Binary,FWLiteMuonKinematicsAnalyzer,src/TopAnalysis/TopAnalyzer/bin,src_TopAnalysis_TopAnalyzer_bin,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_BIN),bin,$(SCRAMSTORENAME_LOGS)))
else
$(eval $(call MultipleWarningMsg,FWLiteMuonKinematicsAnalyzer,src/TopAnalysis/TopAnalyzer/bin))
endif
ifeq ($(strip $(FWLiteMuonQualityAnalyzer)),)
FWLiteMuonQualityAnalyzer_files := $(patsubst src/TopAnalysis/TopAnalyzer/bin/%,%,$(foreach file,FWLiteMuonQualityAnalyzer.cc,$(eval xfile:=$(wildcard src/TopAnalysis/TopAnalyzer/bin/$(file)))$(if $(xfile),$(xfile),$(warning No such file exists: src/TopAnalysis/TopAnalyzer/bin/$(file). Please fix src/TopAnalysis/TopAnalyzer/bin/BuildFile.))))
FWLiteMuonQualityAnalyzer := self/src/TopAnalysis/TopAnalyzer/bin
FWLiteMuonQualityAnalyzer_BuildFile    := $(WORKINGDIR)/cache/bf/src/TopAnalysis/TopAnalyzer/bin/BuildFile
FWLiteMuonQualityAnalyzer_LOC_USE := self AnalysisDataFormats/TopObjects TopAnalysis/TopAnalyzer DataFormats/FWLite FWCore/Framework FWCore/FWLite rootcintex root
FWLiteMuonQualityAnalyzer_PACKAGE := self/src/TopAnalysis/TopAnalyzer/bin
ALL_PRODS += FWLiteMuonQualityAnalyzer
FWLiteMuonQualityAnalyzer_INIT_FUNC        += $$(eval $$(call Binary,FWLiteMuonQualityAnalyzer,src/TopAnalysis/TopAnalyzer/bin,src_TopAnalysis_TopAnalyzer_bin,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_BIN),bin,$(SCRAMSTORENAME_LOGS)))
else
$(eval $(call MultipleWarningMsg,FWLiteMuonQualityAnalyzer,src/TopAnalysis/TopAnalyzer/bin))
endif
ifeq ($(strip $(FWLiteMuonJetKinematicsAnalyzer)),)
FWLiteMuonJetKinematicsAnalyzer_files := $(patsubst src/TopAnalysis/TopAnalyzer/bin/%,%,$(foreach file,FWLiteMuonJetKinematicsAnalyzer.cc,$(eval xfile:=$(wildcard src/TopAnalysis/TopAnalyzer/bin/$(file)))$(if $(xfile),$(xfile),$(warning No such file exists: src/TopAnalysis/TopAnalyzer/bin/$(file). Please fix src/TopAnalysis/TopAnalyzer/bin/BuildFile.))))
FWLiteMuonJetKinematicsAnalyzer := self/src/TopAnalysis/TopAnalyzer/bin
FWLiteMuonJetKinematicsAnalyzer_BuildFile    := $(WORKINGDIR)/cache/bf/src/TopAnalysis/TopAnalyzer/bin/BuildFile
FWLiteMuonJetKinematicsAnalyzer_LOC_USE := self AnalysisDataFormats/TopObjects TopAnalysis/TopAnalyzer DataFormats/FWLite FWCore/Framework FWCore/FWLite rootcintex root
FWLiteMuonJetKinematicsAnalyzer_PACKAGE := self/src/TopAnalysis/TopAnalyzer/bin
ALL_PRODS += FWLiteMuonJetKinematicsAnalyzer
FWLiteMuonJetKinematicsAnalyzer_INIT_FUNC        += $$(eval $$(call Binary,FWLiteMuonJetKinematicsAnalyzer,src/TopAnalysis/TopAnalyzer/bin,src_TopAnalysis_TopAnalyzer_bin,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_BIN),bin,$(SCRAMSTORENAME_LOGS)))
else
$(eval $(call MultipleWarningMsg,FWLiteMuonJetKinematicsAnalyzer,src/TopAnalysis/TopAnalyzer/bin))
endif
ALL_COMMONRULES += src_TopAnalysis_TopAnalyzer_bin
src_TopAnalysis_TopAnalyzer_bin_parent := TopAnalysis/TopAnalyzer
src_TopAnalysis_TopAnalyzer_bin_INIT_FUNC += $$(eval $$(call CommonProductRules,src_TopAnalysis_TopAnalyzer_bin,src/TopAnalysis/TopAnalyzer/bin,BINARY))
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
ifeq ($(strip $(PyTopAnalysisTopAnalyzer)),)
PyTopAnalysisTopAnalyzer := self/src/TopAnalysis/TopAnalyzer/python
PyTopAnalysisTopAnalyzer_files := $(patsubst src/TopAnalysis/TopAnalyzer/python/%,%,$(wildcard $(foreach dir,src/TopAnalysis/TopAnalyzer/python ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
PyTopAnalysisTopAnalyzer_LOC_USE := self
ALL_PYTHON_DIRS += $(patsubst src/%,%,src/TopAnalysis/TopAnalyzer/python)
ALL_PRODS += PyTopAnalysisTopAnalyzer
src_TopAnalysis_TopAnalyzer_python_parent := TopAnalysis/TopAnalyzer
PyTopAnalysisTopAnalyzer_INIT_FUNC        += $$(eval $$(call PythonProduct,PyTopAnalysisTopAnalyzer,src/TopAnalysis/TopAnalyzer/python,src_TopAnalysis_TopAnalyzer_python,1,1,$(SCRAMSTORENAME_PYTHON),$(SCRAMSTORENAME_LIB),,))
else
$(eval $(call MultipleWarningMsg,PyTopAnalysisTopAnalyzer,src/TopAnalysis/TopAnalyzer/python))
endif
ALL_COMMONRULES += src_TopAnalysis_TopAnalyzer_python
src_TopAnalysis_TopAnalyzer_python_INIT_FUNC += $$(eval $$(call CommonProductRules,src_TopAnalysis_TopAnalyzer_python,src/TopAnalysis/TopAnalyzer/python,PYTHON))
ALL_COMMONRULES += src_TopAnalysis_TopAnalyzer_test
src_TopAnalysis_TopAnalyzer_test_parent := TopAnalysis/TopAnalyzer
src_TopAnalysis_TopAnalyzer_test_INIT_FUNC += $$(eval $$(call CommonProductRules,src_TopAnalysis_TopAnalyzer_test,src/TopAnalysis/TopAnalyzer/test,TEST))
ALL_PACKAGES += $(patsubst src/%,%,src/TopAnalysis/TopFilter)
subdirs_src_TopAnalysis_TopFilter := src_TopAnalysis_TopFilter_plugins src_TopAnalysis_TopFilter_python src_TopAnalysis_TopFilter_test
ifeq ($(strip $(TopAnalysisTopFilterPlugins)),)
TopAnalysisTopFilterPlugins_files := $(patsubst src/TopAnalysis/TopFilter/plugins/%,%,$(foreach file,*.cc,$(eval xfile:=$(wildcard src/TopAnalysis/TopFilter/plugins/$(file)))$(if $(xfile),$(xfile),$(warning No such file exists: src/TopAnalysis/TopFilter/plugins/$(file). Please fix src/TopAnalysis/TopFilter/plugins/BuildFile.))))
TopAnalysisTopFilterPlugins := self/src/TopAnalysis/TopFilter/plugins
TopAnalysisTopFilterPlugins_BuildFile    := $(WORKINGDIR)/cache/bf/src/TopAnalysis/TopFilter/plugins/BuildFile
TopAnalysisTopFilterPlugins_LOC_USE := self AnalysisDataFormats/TopObjects DataFormats/PatCandidates PhysicsTools/CandUtils FWCore/MessageLogger FWCore/ParameterSet FWCore/Framework FWCore/Utilities
TopAnalysisTopFilterPlugins_PRE_INIT_FUNC += $$(eval $$(call edmPlugin,TopAnalysisTopFilterPlugins,TopAnalysisTopFilterPlugins,$(SCRAMSTORENAME_LIB)))
TopAnalysisTopFilterPlugins_PACKAGE := self/src/TopAnalysis/TopFilter/plugins
ALL_PRODS += TopAnalysisTopFilterPlugins
TopAnalysisTopFilterPlugins_INIT_FUNC        += $$(eval $$(call Library,TopAnalysisTopFilterPlugins,src/TopAnalysis/TopFilter/plugins,src_TopAnalysis_TopFilter_plugins,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS)))
else
$(eval $(call MultipleWarningMsg,TopAnalysisTopFilterPlugins,src/TopAnalysis/TopFilter/plugins))
endif
ALL_COMMONRULES += src_TopAnalysis_TopFilter_plugins
src_TopAnalysis_TopFilter_plugins_parent := TopAnalysis/TopFilter
src_TopAnalysis_TopFilter_plugins_INIT_FUNC += $$(eval $$(call CommonProductRules,src_TopAnalysis_TopFilter_plugins,src/TopAnalysis/TopFilter/plugins,PLUGINS))
ifeq ($(strip $(PyTopAnalysisTopFilter)),)
PyTopAnalysisTopFilter := self/src/TopAnalysis/TopFilter/python
PyTopAnalysisTopFilter_files := $(patsubst src/TopAnalysis/TopFilter/python/%,%,$(wildcard $(foreach dir,src/TopAnalysis/TopFilter/python ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
PyTopAnalysisTopFilter_LOC_USE := self
ALL_PYTHON_DIRS += $(patsubst src/%,%,src/TopAnalysis/TopFilter/python)
ALL_PRODS += PyTopAnalysisTopFilter
src_TopAnalysis_TopFilter_python_parent := TopAnalysis/TopFilter
PyTopAnalysisTopFilter_INIT_FUNC        += $$(eval $$(call PythonProduct,PyTopAnalysisTopFilter,src/TopAnalysis/TopFilter/python,src_TopAnalysis_TopFilter_python,1,1,$(SCRAMSTORENAME_PYTHON),$(SCRAMSTORENAME_LIB),,))
else
$(eval $(call MultipleWarningMsg,PyTopAnalysisTopFilter,src/TopAnalysis/TopFilter/python))
endif
ALL_COMMONRULES += src_TopAnalysis_TopFilter_python
src_TopAnalysis_TopFilter_python_INIT_FUNC += $$(eval $$(call CommonProductRules,src_TopAnalysis_TopFilter_python,src/TopAnalysis/TopFilter/python,PYTHON))
ALL_COMMONRULES += src_TopAnalysis_TopFilter_test
src_TopAnalysis_TopFilter_test_parent := TopAnalysis/TopFilter
src_TopAnalysis_TopFilter_test_INIT_FUNC += $$(eval $$(call CommonProductRules,src_TopAnalysis_TopFilter_test,src/TopAnalysis/TopFilter/test,TEST))
ALL_PACKAGES += $(patsubst src/%,%,src/TopAnalysis/TopUtils)
subdirs_src_TopAnalysis_TopUtils := src_TopAnalysis_TopUtils_bin src_TopAnalysis_TopUtils_plugins src_TopAnalysis_TopUtils_python src_TopAnalysis_TopUtils_scripts src_TopAnalysis_TopUtils_src src_TopAnalysis_TopUtils_test
ifeq ($(strip $(resolhistowriter)),)
resolhistowriter_files := $(patsubst src/TopAnalysis/TopUtils/bin/%,%,$(foreach file,resolhistowriter.cc,$(eval xfile:=$(wildcard src/TopAnalysis/TopUtils/bin/$(file)))$(if $(xfile),$(xfile),$(warning No such file exists: src/TopAnalysis/TopUtils/bin/$(file). Please fix src/TopAnalysis/TopUtils/bin/BuildFile.))))
resolhistowriter := self/src/TopAnalysis/TopUtils/bin
resolhistowriter_BuildFile    := $(WORKINGDIR)/cache/bf/src/TopAnalysis/TopUtils/bin/BuildFile
resolhistowriter_LOC_USE := self rootgpad
resolhistowriter_PACKAGE := self/src/TopAnalysis/TopUtils/bin
ALL_PRODS += resolhistowriter
resolhistowriter_INIT_FUNC        += $$(eval $$(call Binary,resolhistowriter,src/TopAnalysis/TopUtils/bin,src_TopAnalysis_TopUtils_bin,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_BIN),bin,$(SCRAMSTORENAME_LOGS)))
else
$(eval $(call MultipleWarningMsg,resolhistowriter,src/TopAnalysis/TopUtils/bin))
endif
ifeq ($(strip $(resolutioncalculator)),)
resolutioncalculator_files := $(patsubst src/TopAnalysis/TopUtils/bin/%,%,$(foreach file,resolutioncalculator.cc,$(eval xfile:=$(wildcard src/TopAnalysis/TopUtils/bin/$(file)))$(if $(xfile),$(xfile),$(warning No such file exists: src/TopAnalysis/TopUtils/bin/$(file). Please fix src/TopAnalysis/TopUtils/bin/BuildFile.))))
resolutioncalculator := self/src/TopAnalysis/TopUtils/bin
resolutioncalculator_BuildFile    := $(WORKINGDIR)/cache/bf/src/TopAnalysis/TopUtils/bin/BuildFile
resolutioncalculator_LOC_USE := self rootgpad
resolutioncalculator_PACKAGE := self/src/TopAnalysis/TopUtils/bin
ALL_PRODS += resolutioncalculator
resolutioncalculator_INIT_FUNC        += $$(eval $$(call Binary,resolutioncalculator,src/TopAnalysis/TopUtils/bin,src_TopAnalysis_TopUtils_bin,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_BIN),bin,$(SCRAMSTORENAME_LOGS)))
else
$(eval $(call MultipleWarningMsg,resolutioncalculator,src/TopAnalysis/TopUtils/bin))
endif
ALL_COMMONRULES += src_TopAnalysis_TopUtils_bin
src_TopAnalysis_TopUtils_bin_parent := TopAnalysis/TopUtils
src_TopAnalysis_TopUtils_bin_INIT_FUNC += $$(eval $$(call CommonProductRules,src_TopAnalysis_TopUtils_bin,src/TopAnalysis/TopUtils/bin,BINARY))
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
ifeq ($(strip $(PyTopAnalysisTopUtils)),)
PyTopAnalysisTopUtils := self/src/TopAnalysis/TopUtils/python
PyTopAnalysisTopUtils_files := $(patsubst src/TopAnalysis/TopUtils/python/%,%,$(wildcard $(foreach dir,src/TopAnalysis/TopUtils/python ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
PyTopAnalysisTopUtils_LOC_USE := self
ALL_PYTHON_DIRS += $(patsubst src/%,%,src/TopAnalysis/TopUtils/python)
ALL_PRODS += PyTopAnalysisTopUtils
src_TopAnalysis_TopUtils_python_parent := TopAnalysis/TopUtils
PyTopAnalysisTopUtils_INIT_FUNC        += $$(eval $$(call PythonProduct,PyTopAnalysisTopUtils,src/TopAnalysis/TopUtils/python,src_TopAnalysis_TopUtils_python,1,1,$(SCRAMSTORENAME_PYTHON),$(SCRAMSTORENAME_LIB),,))
else
$(eval $(call MultipleWarningMsg,PyTopAnalysisTopUtils,src/TopAnalysis/TopUtils/python))
endif
ALL_COMMONRULES += src_TopAnalysis_TopUtils_python
src_TopAnalysis_TopUtils_python_INIT_FUNC += $$(eval $$(call CommonProductRules,src_TopAnalysis_TopUtils_python,src/TopAnalysis/TopUtils/python,PYTHON))
src_TopAnalysis_TopUtils_scripts_files := $(filter-out \#% %\#,$(notdir $(wildcard $(foreach dir,$(LOCALTOP)/src/TopAnalysis/TopUtils/scripts,$(dir)/*))))
$(eval $(call Src2StoreCopy,src_TopAnalysis_TopUtils_scripts,src/TopAnalysis/TopUtils/scripts,$(SCRAMSTORENAME_BIN),*))
ALL_COMMONRULES += src_TopAnalysis_TopUtils_test
src_TopAnalysis_TopUtils_test_parent := TopAnalysis/TopUtils
src_TopAnalysis_TopUtils_test_INIT_FUNC += $$(eval $$(call CommonProductRules,src_TopAnalysis_TopUtils_test,src/TopAnalysis/TopUtils/test,TEST))
ALL_PACKAGES += $(patsubst src/%,%,src/TopAnalysis/ZTopUtils)
subdirs_src_TopAnalysis_ZTopUtils := src_TopAnalysis_ZTopUtils_ext src_TopAnalysis_ZTopUtils_interface src_TopAnalysis_ZTopUtils_src
ALL_SUBSYSTEMS+=$(patsubst src/%,%,src/EGamma)
subdirs_src_EGamma = src_EGamma_EGammaAnalysisTools
ALL_SUBSYSTEMS+=$(patsubst src/%,%,src/AnalysisDataFormats)
subdirs_src_AnalysisDataFormats = src_AnalysisDataFormats_TopObjects
ALL_PACKAGES += $(patsubst src/%,%,src/AnalysisDataFormats/TopObjects)
subdirs_src_AnalysisDataFormats_TopObjects := src_AnalysisDataFormats_TopObjects_interface src_AnalysisDataFormats_TopObjects_src
ALL_SUBSYSTEMS+=$(patsubst src/%,%,src/DataFormats)
subdirs_src_DataFormats = src_DataFormats_StdDictionaries src_DataFormats_PatCandidates
ALL_PACKAGES += $(patsubst src/%,%,src/DataFormats/PatCandidates)
subdirs_src_DataFormats_PatCandidates := src_DataFormats_PatCandidates_src src_DataFormats_PatCandidates_test
ifeq ($(strip $(testKinResolutions)),)
testKinResolutions_files := $(patsubst src/DataFormats/PatCandidates/test/%,%,$(foreach file,testKinParametrizations.cc testKinResolutions.cc testRunner.cpp,$(eval xfile:=$(wildcard src/DataFormats/PatCandidates/test/$(file)))$(if $(xfile),$(xfile),$(warning No such file exists: src/DataFormats/PatCandidates/test/$(file). Please fix src/DataFormats/PatCandidates/test/BuildFile.))))
testKinResolutions := self/src/DataFormats/PatCandidates/test
testKinResolutions_TEST_RUNNER_CMD := echo
testKinResolutions_NO_TESTRUN := yes
testKinResolutions_BuildFile    := $(WORKINGDIR)/cache/bf/src/DataFormats/PatCandidates/test/BuildFile
testKinResolutions_LOC_USE := self boost cppunit DataFormats/PatCandidates
testKinResolutions_PACKAGE := self/src/DataFormats/PatCandidates/test
ALL_PRODS += testKinResolutions
testKinResolutions_INIT_FUNC        += $$(eval $$(call Binary,testKinResolutions,src/DataFormats/PatCandidates/test,src_DataFormats_PatCandidates_test,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_TEST),test,$(SCRAMSTORENAME_LOGS)))
else
$(eval $(call MultipleWarningMsg,testKinResolutions,src/DataFormats/PatCandidates/test))
endif
ALL_COMMONRULES += src_DataFormats_PatCandidates_test
src_DataFormats_PatCandidates_test_parent := DataFormats/PatCandidates
src_DataFormats_PatCandidates_test_INIT_FUNC += $$(eval $$(call CommonProductRules,src_DataFormats_PatCandidates_test,src/DataFormats/PatCandidates/test,TEST))
ALL_PACKAGES += $(patsubst src/%,%,src/EGamma/EGammaAnalysisTools)
subdirs_src_EGamma_EGammaAnalysisTools := src_EGamma_EGammaAnalysisTools_plugins src_EGamma_EGammaAnalysisTools_python src_EGamma_EGammaAnalysisTools_src src_EGamma_EGammaAnalysisTools_test
ifeq ($(strip $(EGammaEGammaAnalysisToolsPlugins)),)
EGammaEGammaAnalysisToolsPlugins_files := $(patsubst src/EGamma/EGammaAnalysisTools/plugins/%,%,$(foreach file,*.cc,$(eval xfile:=$(wildcard src/EGamma/EGammaAnalysisTools/plugins/$(file)))$(if $(xfile),$(xfile),$(warning No such file exists: src/EGamma/EGammaAnalysisTools/plugins/$(file). Please fix src/EGamma/EGammaAnalysisTools/plugins/BuildFile.))))
EGammaEGammaAnalysisToolsPlugins := self/src/EGamma/EGammaAnalysisTools/plugins
EGammaEGammaAnalysisToolsPlugins_BuildFile    := $(WORKINGDIR)/cache/bf/src/EGamma/EGammaAnalysisTools/plugins/BuildFile
EGammaEGammaAnalysisToolsPlugins_LOC_USE := self FWCore/Framework FWCore/ParameterSet FWCore/MessageLogger DataFormats/EgammaCandidates CommonTools/Utils HLTrigger/HLTcore EGamma/EGammaAnalysisTools
EGammaEGammaAnalysisToolsPlugins_PRE_INIT_FUNC += $$(eval $$(call edmPlugin,EGammaEGammaAnalysisToolsPlugins,EGammaEGammaAnalysisToolsPlugins,$(SCRAMSTORENAME_LIB)))
EGammaEGammaAnalysisToolsPlugins_PACKAGE := self/src/EGamma/EGammaAnalysisTools/plugins
ALL_PRODS += EGammaEGammaAnalysisToolsPlugins
EGammaEGammaAnalysisToolsPlugins_INIT_FUNC        += $$(eval $$(call Library,EGammaEGammaAnalysisToolsPlugins,src/EGamma/EGammaAnalysisTools/plugins,src_EGamma_EGammaAnalysisTools_plugins,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS)))
else
$(eval $(call MultipleWarningMsg,EGammaEGammaAnalysisToolsPlugins,src/EGamma/EGammaAnalysisTools/plugins))
endif
ALL_COMMONRULES += src_EGamma_EGammaAnalysisTools_plugins
src_EGamma_EGammaAnalysisTools_plugins_parent := EGamma/EGammaAnalysisTools
src_EGamma_EGammaAnalysisTools_plugins_INIT_FUNC += $$(eval $$(call CommonProductRules,src_EGamma_EGammaAnalysisTools_plugins,src/EGamma/EGammaAnalysisTools/plugins,PLUGINS))
ifeq ($(strip $(PyEGammaEGammaAnalysisTools)),)
PyEGammaEGammaAnalysisTools := self/src/EGamma/EGammaAnalysisTools/python
PyEGammaEGammaAnalysisTools_files := $(patsubst src/EGamma/EGammaAnalysisTools/python/%,%,$(wildcard $(foreach dir,src/EGamma/EGammaAnalysisTools/python ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
PyEGammaEGammaAnalysisTools_LOC_USE := self
ALL_PYTHON_DIRS += $(patsubst src/%,%,src/EGamma/EGammaAnalysisTools/python)
ALL_PRODS += PyEGammaEGammaAnalysisTools
src_EGamma_EGammaAnalysisTools_python_parent := EGamma/EGammaAnalysisTools
PyEGammaEGammaAnalysisTools_INIT_FUNC        += $$(eval $$(call PythonProduct,PyEGammaEGammaAnalysisTools,src/EGamma/EGammaAnalysisTools/python,src_EGamma_EGammaAnalysisTools_python,1,1,$(SCRAMSTORENAME_PYTHON),$(SCRAMSTORENAME_LIB),,))
else
$(eval $(call MultipleWarningMsg,PyEGammaEGammaAnalysisTools,src/EGamma/EGammaAnalysisTools/python))
endif
ALL_COMMONRULES += src_EGamma_EGammaAnalysisTools_python
src_EGamma_EGammaAnalysisTools_python_INIT_FUNC += $$(eval $$(call CommonProductRules,src_EGamma_EGammaAnalysisTools_python,src/EGamma/EGammaAnalysisTools/python,PYTHON))
ifeq ($(strip $(EgammaEGammaAnalysisToolsTest)),)
EgammaEGammaAnalysisToolsTest_files := $(patsubst src/EGamma/EGammaAnalysisTools/test/%,%,$(foreach file,*.cc,$(eval xfile:=$(wildcard src/EGamma/EGammaAnalysisTools/test/$(file)))$(if $(xfile),$(xfile),$(warning No such file exists: src/EGamma/EGammaAnalysisTools/test/$(file). Please fix src/EGamma/EGammaAnalysisTools/test/BuildFile.))))
EgammaEGammaAnalysisToolsTest := self/src/EGamma/EGammaAnalysisTools/test
EgammaEGammaAnalysisToolsTest_BuildFile    := $(WORKINGDIR)/cache/bf/src/EGamma/EGammaAnalysisTools/test/BuildFile
EgammaEGammaAnalysisToolsTest_LOC_USE := self DataFormats/Common DataFormats/EgammaReco DataFormats/GsfTrackReco DataFormats/ParticleFlowCandidate DataFormats/ParticleFlowReco FWCore/Framework FWCore/MessageLogger FWCore/ParameterSet RecoParticleFlow/PFProducer EGamma/EGammaAnalysisTools clhep root roottmva
EgammaEGammaAnalysisToolsTest_PRE_INIT_FUNC += $$(eval $$(call edmPlugin,EgammaEGammaAnalysisToolsTest,EgammaEGammaAnalysisToolsTest,$(SCRAMSTORENAME_LIB)))
EgammaEGammaAnalysisToolsTest_PACKAGE := self/src/EGamma/EGammaAnalysisTools/test
ALL_PRODS += EgammaEGammaAnalysisToolsTest
EgammaEGammaAnalysisToolsTest_INIT_FUNC        += $$(eval $$(call Library,EgammaEGammaAnalysisToolsTest,src/EGamma/EGammaAnalysisTools/test,src_EGamma_EGammaAnalysisTools_test,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS)))
else
$(eval $(call MultipleWarningMsg,EgammaEGammaAnalysisToolsTest,src/EGamma/EGammaAnalysisTools/test))
endif
ALL_COMMONRULES += src_EGamma_EGammaAnalysisTools_test
src_EGamma_EGammaAnalysisTools_test_parent := EGamma/EGammaAnalysisTools
src_EGamma_EGammaAnalysisTools_test_INIT_FUNC += $$(eval $$(call CommonProductRules,src_EGamma_EGammaAnalysisTools_test,src/EGamma/EGammaAnalysisTools/test,TEST))
ALL_SUBSYSTEMS+=$(patsubst src/%,%,src/ElectroWeakAnalysis)
subdirs_src_ElectroWeakAnalysis = src_ElectroWeakAnalysis_Utilities
ALL_PACKAGES += $(patsubst src/%,%,src/ElectroWeakAnalysis/Utilities)
subdirs_src_ElectroWeakAnalysis_Utilities := src_ElectroWeakAnalysis_Utilities_python src_ElectroWeakAnalysis_Utilities_src src_ElectroWeakAnalysis_Utilities_test
ifeq ($(strip $(PyElectroWeakAnalysisUtilities)),)
PyElectroWeakAnalysisUtilities := self/src/ElectroWeakAnalysis/Utilities/python
PyElectroWeakAnalysisUtilities_files := $(patsubst src/ElectroWeakAnalysis/Utilities/python/%,%,$(wildcard $(foreach dir,src/ElectroWeakAnalysis/Utilities/python ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
PyElectroWeakAnalysisUtilities_LOC_USE := self
ALL_PYTHON_DIRS += $(patsubst src/%,%,src/ElectroWeakAnalysis/Utilities/python)
ALL_PRODS += PyElectroWeakAnalysisUtilities
src_ElectroWeakAnalysis_Utilities_python_parent := ElectroWeakAnalysis/Utilities
PyElectroWeakAnalysisUtilities_INIT_FUNC        += $$(eval $$(call PythonProduct,PyElectroWeakAnalysisUtilities,src/ElectroWeakAnalysis/Utilities/python,src_ElectroWeakAnalysis_Utilities_python,1,1,$(SCRAMSTORENAME_PYTHON),$(SCRAMSTORENAME_LIB),,))
else
$(eval $(call MultipleWarningMsg,PyElectroWeakAnalysisUtilities,src/ElectroWeakAnalysis/Utilities/python))
endif
ALL_COMMONRULES += src_ElectroWeakAnalysis_Utilities_python
src_ElectroWeakAnalysis_Utilities_python_INIT_FUNC += $$(eval $$(call CommonProductRules,src_ElectroWeakAnalysis_Utilities_python,src/ElectroWeakAnalysis/Utilities/python,PYTHON))
ALL_COMMONRULES += src_ElectroWeakAnalysis_Utilities_test
src_ElectroWeakAnalysis_Utilities_test_parent := ElectroWeakAnalysis/Utilities
src_ElectroWeakAnalysis_Utilities_test_INIT_FUNC += $$(eval $$(call CommonProductRules,src_ElectroWeakAnalysis_Utilities_test,src/ElectroWeakAnalysis/Utilities/test,TEST))
ALL_SUBSYSTEMS+=$(patsubst src/%,%,src/PhysicsTools)
subdirs_src_PhysicsTools = src_PhysicsTools_NtupleUtils src_PhysicsTools_PatAlgos src_PhysicsTools_PatUtils
ALL_PACKAGES += $(patsubst src/%,%,src/PhysicsTools/PatAlgos)
subdirs_src_PhysicsTools_PatAlgos := src_PhysicsTools_PatAlgos_plugins src_PhysicsTools_PatAlgos_python src_PhysicsTools_PatAlgos_scripts src_PhysicsTools_PatAlgos_src src_PhysicsTools_PatAlgos_test
ifeq ($(strip $(PhysicsToolsPatAlgos_plugins)),)
PhysicsToolsPatAlgos_plugins_files := $(patsubst src/PhysicsTools/PatAlgos/plugins/%,%,$(foreach file,*.cc,$(eval xfile:=$(wildcard src/PhysicsTools/PatAlgos/plugins/$(file)))$(if $(xfile),$(xfile),$(warning No such file exists: src/PhysicsTools/PatAlgos/plugins/$(file). Please fix src/PhysicsTools/PatAlgos/plugins/BuildFile.))))
PhysicsToolsPatAlgos_plugins := self/src/PhysicsTools/PatAlgos/plugins
PhysicsToolsPatAlgos_plugins_BuildFile    := $(WORKINGDIR)/cache/bf/src/PhysicsTools/PatAlgos/plugins/BuildFile
PhysicsToolsPatAlgos_plugins_LOC_USE := self PhysicsTools/PatAlgos FWCore/Framework FWCore/ParameterSet FWCore/MessageLogger FWCore/MessageService L1Trigger/GlobalTriggerAnalyzer HLTrigger/HLTcore DataFormats/PatCandidates DataFormats/BTauReco DataFormats/JetReco DataFormats/TrackReco DataFormats/Candidate DataFormats/HeavyIonEvent PhysicsTools/PatUtils CondFormats/JetMETObjects JetMETCorrections/Objects TrackingTools/TransientTrack SimDataFormats/Track SimDataFormats/Vertex SimGeneral/HepPDTRecord RecoMET/METAlgorithms RecoEgamma/EgammaTools TrackingTools/IPTools root
PhysicsToolsPatAlgos_plugins_PRE_INIT_FUNC += $$(eval $$(call edmPlugin,PhysicsToolsPatAlgos_plugins,PhysicsToolsPatAlgos_plugins,$(SCRAMSTORENAME_LIB)))
PhysicsToolsPatAlgos_plugins_PACKAGE := self/src/PhysicsTools/PatAlgos/plugins
ALL_PRODS += PhysicsToolsPatAlgos_plugins
PhysicsToolsPatAlgos_plugins_INIT_FUNC        += $$(eval $$(call Library,PhysicsToolsPatAlgos_plugins,src/PhysicsTools/PatAlgos/plugins,src_PhysicsTools_PatAlgos_plugins,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS)))
else
$(eval $(call MultipleWarningMsg,PhysicsToolsPatAlgos_plugins,src/PhysicsTools/PatAlgos/plugins))
endif
ALL_COMMONRULES += src_PhysicsTools_PatAlgos_plugins
src_PhysicsTools_PatAlgos_plugins_parent := PhysicsTools/PatAlgos
src_PhysicsTools_PatAlgos_plugins_INIT_FUNC += $$(eval $$(call CommonProductRules,src_PhysicsTools_PatAlgos_plugins,src/PhysicsTools/PatAlgos/plugins,PLUGINS))
ifeq ($(strip $(PyPhysicsToolsPatAlgos)),)
PyPhysicsToolsPatAlgos := self/src/PhysicsTools/PatAlgos/python
PyPhysicsToolsPatAlgos_files := $(patsubst src/PhysicsTools/PatAlgos/python/%,%,$(wildcard $(foreach dir,src/PhysicsTools/PatAlgos/python ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
PyPhysicsToolsPatAlgos_LOC_USE := self
ALL_PYTHON_DIRS += $(patsubst src/%,%,src/PhysicsTools/PatAlgos/python)
ALL_PRODS += PyPhysicsToolsPatAlgos
src_PhysicsTools_PatAlgos_python_parent := PhysicsTools/PatAlgos
PyPhysicsToolsPatAlgos_INIT_FUNC        += $$(eval $$(call PythonProduct,PyPhysicsToolsPatAlgos,src/PhysicsTools/PatAlgos/python,src_PhysicsTools_PatAlgos_python,1,1,$(SCRAMSTORENAME_PYTHON),$(SCRAMSTORENAME_LIB),,))
else
$(eval $(call MultipleWarningMsg,PyPhysicsToolsPatAlgos,src/PhysicsTools/PatAlgos/python))
endif
ALL_COMMONRULES += src_PhysicsTools_PatAlgos_python
src_PhysicsTools_PatAlgos_python_INIT_FUNC += $$(eval $$(call CommonProductRules,src_PhysicsTools_PatAlgos_python,src/PhysicsTools/PatAlgos/python,PYTHON))
src_PhysicsTools_PatAlgos_scripts_files := $(filter-out \#% %\#,$(notdir $(wildcard $(foreach dir,$(LOCALTOP)/src/PhysicsTools/PatAlgos/scripts,$(dir)/*))))
$(eval $(call Src2StoreCopy,src_PhysicsTools_PatAlgos_scripts,src/PhysicsTools/PatAlgos/scripts,$(SCRAMSTORENAME_BIN),*))
ifeq ($(strip $(runtestPhysicsToolsPatAlgos)),)
runtestPhysicsToolsPatAlgos_files := $(patsubst src/PhysicsTools/PatAlgos/test/%,%,$(foreach file,runtestPhysicsToolsPatAlgos.cpp,$(eval xfile:=$(wildcard src/PhysicsTools/PatAlgos/test/$(file)))$(if $(xfile),$(xfile),$(warning No such file exists: src/PhysicsTools/PatAlgos/test/$(file). Please fix src/PhysicsTools/PatAlgos/test/BuildFile.))))
runtestPhysicsToolsPatAlgos := self/src/PhysicsTools/PatAlgos/test
runtestPhysicsToolsPatAlgos_TEST_RUNNER_CMD :=  runtestPhysicsToolsPatAlgos  /bin/bash PhysicsTools/PatAlgos/test runtests.sh
runtestPhysicsToolsPatAlgos_BuildFile    := $(WORKINGDIR)/cache/bf/src/PhysicsTools/PatAlgos/test/BuildFile
runtestPhysicsToolsPatAlgos_LOC_USE := self FWCore/Utilities
runtestPhysicsToolsPatAlgos_PACKAGE := self/src/PhysicsTools/PatAlgos/test
ALL_PRODS += runtestPhysicsToolsPatAlgos
runtestPhysicsToolsPatAlgos_INIT_FUNC        += $$(eval $$(call Binary,runtestPhysicsToolsPatAlgos,src/PhysicsTools/PatAlgos/test,src_PhysicsTools_PatAlgos_test,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_TEST),test,$(SCRAMSTORENAME_LOGS)))
else
$(eval $(call MultipleWarningMsg,runtestPhysicsToolsPatAlgos,src/PhysicsTools/PatAlgos/test))
endif
ifeq ($(strip $(PhysicsToolsPatAlgos_testAnalyzers)),)
PhysicsToolsPatAlgos_testAnalyzers_files := $(patsubst src/PhysicsTools/PatAlgos/test/%,%,$(foreach file,private/*.cc,$(eval xfile:=$(wildcard src/PhysicsTools/PatAlgos/test/$(file)))$(if $(xfile),$(xfile),$(warning No such file exists: src/PhysicsTools/PatAlgos/test/$(file). Please fix src/PhysicsTools/PatAlgos/test/BuildFile.))))
PhysicsToolsPatAlgos_testAnalyzers := self/src/PhysicsTools/PatAlgos/test
PhysicsToolsPatAlgos_testAnalyzers_BuildFile    := $(WORKINGDIR)/cache/bf/src/PhysicsTools/PatAlgos/test/BuildFile
PhysicsToolsPatAlgos_testAnalyzers_LOC_USE := self FWCore/Framework FWCore/ParameterSet DataFormats/BTauReco PhysicsTools/PatUtils DataFormats/PatCandidates PhysicsTools/UtilAlgos root
PhysicsToolsPatAlgos_testAnalyzers_PRE_INIT_FUNC += $$(eval $$(call edmPlugin,PhysicsToolsPatAlgos_testAnalyzers,PhysicsToolsPatAlgos_testAnalyzers,$(SCRAMSTORENAME_LIB)))
PhysicsToolsPatAlgos_testAnalyzers_PACKAGE := self/src/PhysicsTools/PatAlgos/test
ALL_PRODS += PhysicsToolsPatAlgos_testAnalyzers
PhysicsToolsPatAlgos_testAnalyzers_INIT_FUNC        += $$(eval $$(call Library,PhysicsToolsPatAlgos_testAnalyzers,src/PhysicsTools/PatAlgos/test,src_PhysicsTools_PatAlgos_test,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS)))
else
$(eval $(call MultipleWarningMsg,PhysicsToolsPatAlgos_testAnalyzers,src/PhysicsTools/PatAlgos/test))
endif
ALL_COMMONRULES += src_PhysicsTools_PatAlgos_test
src_PhysicsTools_PatAlgos_test_parent := PhysicsTools/PatAlgos
src_PhysicsTools_PatAlgos_test_INIT_FUNC += $$(eval $$(call CommonProductRules,src_PhysicsTools_PatAlgos_test,src/PhysicsTools/PatAlgos/test,TEST))
ALL_SUBSYSTEMS+=$(patsubst src/%,%,src/RecoParticleFlow)
subdirs_src_RecoParticleFlow = src_RecoParticleFlow_PFProducer
ALL_PACKAGES += $(patsubst src/%,%,src/RecoParticleFlow/PFProducer)
subdirs_src_RecoParticleFlow_PFProducer := src_RecoParticleFlow_PFProducer_python src_RecoParticleFlow_PFProducer_plugins src_RecoParticleFlow_PFProducer_test src_RecoParticleFlow_PFProducer_src
ifeq ($(strip $(RecoParticleFlowPFProducerPlugins)),)
RecoParticleFlowPFProducerPlugins_files := $(patsubst src/RecoParticleFlow/PFProducer/plugins/%,%,$(foreach file,*.cc,$(eval xfile:=$(wildcard src/RecoParticleFlow/PFProducer/plugins/$(file)))$(if $(xfile),$(xfile),$(warning No such file exists: src/RecoParticleFlow/PFProducer/plugins/$(file). Please fix src/RecoParticleFlow/PFProducer/plugins/BuildFile.))))
RecoParticleFlowPFProducerPlugins := self/src/RecoParticleFlow/PFProducer/plugins
RecoParticleFlowPFProducerPlugins_BuildFile    := $(WORKINGDIR)/cache/bf/src/RecoParticleFlow/PFProducer/plugins/BuildFile
RecoParticleFlowPFProducerPlugins_LOC_USE := self CondFormats/DataRecord CondFormats/PhysicsToolsObjects DataFormats/CaloRecHit DataFormats/Common DataFormats/EgammaReco DataFormats/EgammaTrackReco DataFormats/GsfTrackReco DataFormats/MuonReco DataFormats/ParticleFlowCandidate DataFormats/ParticleFlowReco FWCore/Framework FWCore/MessageLogger FWCore/ParameterSet FWCore/Utilities RecoParticleFlow/PFClusterTools RecoParticleFlow/PFProducer RecoEcal/EgammaCoreTools Geometry/CaloTopology RecoEgamma/EgammaIsolationAlgos RecoEgamma/PhotonIdentification
RecoParticleFlowPFProducerPlugins_PRE_INIT_FUNC += $$(eval $$(call edmPlugin,RecoParticleFlowPFProducerPlugins,RecoParticleFlowPFProducerPlugins,$(SCRAMSTORENAME_LIB)))
RecoParticleFlowPFProducerPlugins_PACKAGE := self/src/RecoParticleFlow/PFProducer/plugins
ALL_PRODS += RecoParticleFlowPFProducerPlugins
RecoParticleFlowPFProducerPlugins_INIT_FUNC        += $$(eval $$(call Library,RecoParticleFlowPFProducerPlugins,src/RecoParticleFlow/PFProducer/plugins,src_RecoParticleFlow_PFProducer_plugins,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS)))
else
$(eval $(call MultipleWarningMsg,RecoParticleFlowPFProducerPlugins,src/RecoParticleFlow/PFProducer/plugins))
endif
ALL_COMMONRULES += src_RecoParticleFlow_PFProducer_plugins
src_RecoParticleFlow_PFProducer_plugins_parent := RecoParticleFlow/PFProducer
src_RecoParticleFlow_PFProducer_plugins_INIT_FUNC += $$(eval $$(call CommonProductRules,src_RecoParticleFlow_PFProducer_plugins,src/RecoParticleFlow/PFProducer/plugins,PLUGINS))
ifeq ($(strip $(PyRecoParticleFlowPFProducer)),)
PyRecoParticleFlowPFProducer := self/src/RecoParticleFlow/PFProducer/python
PyRecoParticleFlowPFProducer_files := $(patsubst src/RecoParticleFlow/PFProducer/python/%,%,$(wildcard $(foreach dir,src/RecoParticleFlow/PFProducer/python ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
PyRecoParticleFlowPFProducer_LOC_USE := self
ALL_PYTHON_DIRS += $(patsubst src/%,%,src/RecoParticleFlow/PFProducer/python)
ALL_PRODS += PyRecoParticleFlowPFProducer
src_RecoParticleFlow_PFProducer_python_parent := RecoParticleFlow/PFProducer
PyRecoParticleFlowPFProducer_INIT_FUNC        += $$(eval $$(call PythonProduct,PyRecoParticleFlowPFProducer,src/RecoParticleFlow/PFProducer/python,src_RecoParticleFlow_PFProducer_python,1,1,$(SCRAMSTORENAME_PYTHON),$(SCRAMSTORENAME_LIB),,))
else
$(eval $(call MultipleWarningMsg,PyRecoParticleFlowPFProducer,src/RecoParticleFlow/PFProducer/python))
endif
ALL_COMMONRULES += src_RecoParticleFlow_PFProducer_python
src_RecoParticleFlow_PFProducer_python_INIT_FUNC += $$(eval $$(call CommonProductRules,src_RecoParticleFlow_PFProducer_python,src/RecoParticleFlow/PFProducer/python,PYTHON))
ifeq ($(strip $(RecoParticleFlowPFSuperClusterReader)),)
RecoParticleFlowPFSuperClusterReader_files := $(patsubst src/RecoParticleFlow/PFProducer/test/%,%,$(foreach file,PFSuperClusterReader.cc,$(eval xfile:=$(wildcard src/RecoParticleFlow/PFProducer/test/$(file)))$(if $(xfile),$(xfile),$(warning No such file exists: src/RecoParticleFlow/PFProducer/test/$(file). Please fix src/RecoParticleFlow/PFProducer/test/BuildFile.))))
RecoParticleFlowPFSuperClusterReader := self/src/RecoParticleFlow/PFProducer/test
RecoParticleFlowPFSuperClusterReader_BuildFile    := $(WORKINGDIR)/cache/bf/src/RecoParticleFlow/PFProducer/test/BuildFile
RecoParticleFlowPFSuperClusterReader_LOC_USE := self DataFormats/Common DataFormats/EgammaReco DataFormats/GsfTrackReco DataFormats/ParticleFlowCandidate DataFormats/ParticleFlowReco FWCore/Framework FWCore/MessageLogger FWCore/ParameterSet
RecoParticleFlowPFSuperClusterReader_PRE_INIT_FUNC += $$(eval $$(call edmPlugin,RecoParticleFlowPFSuperClusterReader,RecoParticleFlowPFSuperClusterReader,$(SCRAMSTORENAME_LIB)))
RecoParticleFlowPFSuperClusterReader_PACKAGE := self/src/RecoParticleFlow/PFProducer/test
ALL_PRODS += RecoParticleFlowPFSuperClusterReader
RecoParticleFlowPFSuperClusterReader_INIT_FUNC        += $$(eval $$(call Library,RecoParticleFlowPFSuperClusterReader,src/RecoParticleFlow/PFProducer/test,src_RecoParticleFlow_PFProducer_test,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS)))
else
$(eval $(call MultipleWarningMsg,RecoParticleFlowPFSuperClusterReader,src/RecoParticleFlow/PFProducer/test))
endif
ifeq ($(strip $(RecoParticleFlowPFIsoReader)),)
RecoParticleFlowPFIsoReader_files := $(patsubst src/RecoParticleFlow/PFProducer/test/%,%,$(foreach file,PFIsoReader.cc,$(eval xfile:=$(wildcard src/RecoParticleFlow/PFProducer/test/$(file)))$(if $(xfile),$(xfile),$(warning No such file exists: src/RecoParticleFlow/PFProducer/test/$(file). Please fix src/RecoParticleFlow/PFProducer/test/BuildFile.))))
RecoParticleFlowPFIsoReader := self/src/RecoParticleFlow/PFProducer/test
RecoParticleFlowPFIsoReader_BuildFile    := $(WORKINGDIR)/cache/bf/src/RecoParticleFlow/PFProducer/test/BuildFile
RecoParticleFlowPFIsoReader_LOC_USE := self DataFormats/Common DataFormats/EgammaReco DataFormats/GsfTrackReco DataFormats/ParticleFlowCandidate DataFormats/ParticleFlowReco FWCore/Framework FWCore/MessageLogger FWCore/ParameterSet
RecoParticleFlowPFIsoReader_PRE_INIT_FUNC += $$(eval $$(call edmPlugin,RecoParticleFlowPFIsoReader,RecoParticleFlowPFIsoReader,$(SCRAMSTORENAME_LIB)))
RecoParticleFlowPFIsoReader_PACKAGE := self/src/RecoParticleFlow/PFProducer/test
ALL_PRODS += RecoParticleFlowPFIsoReader
RecoParticleFlowPFIsoReader_INIT_FUNC        += $$(eval $$(call Library,RecoParticleFlowPFIsoReader,src/RecoParticleFlow/PFProducer/test,src_RecoParticleFlow_PFProducer_test,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS)))
else
$(eval $(call MultipleWarningMsg,RecoParticleFlowPFIsoReader,src/RecoParticleFlow/PFProducer/test))
endif
ALL_COMMONRULES += src_RecoParticleFlow_PFProducer_test
src_RecoParticleFlow_PFProducer_test_parent := RecoParticleFlow/PFProducer
src_RecoParticleFlow_PFProducer_test_INIT_FUNC += $$(eval $$(call CommonProductRules,src_RecoParticleFlow_PFProducer_test,src/RecoParticleFlow/PFProducer/test,TEST))
ALL_SUBSYSTEMS+=$(patsubst src/%,%,src/TopQuarkAnalysis)
subdirs_src_TopQuarkAnalysis = src_TopQuarkAnalysis_Configuration src_TopQuarkAnalysis_Examples src_TopQuarkAnalysis_TopEventProducers src_TopQuarkAnalysis_TopEventSelection src_TopQuarkAnalysis_TopHitFit src_TopQuarkAnalysis_TopJetCombination src_TopQuarkAnalysis_TopKinFitter src_TopQuarkAnalysis_TopObjectResolutions src_TopQuarkAnalysis_TopSkimming src_TopQuarkAnalysis_TopTools
ALL_PACKAGES += $(patsubst src/%,%,src/TopQuarkAnalysis/Configuration)
subdirs_src_TopQuarkAnalysis_Configuration := src_TopQuarkAnalysis_Configuration_python src_TopQuarkAnalysis_Configuration_test
ifeq ($(strip $(PyTopQuarkAnalysisConfiguration)),)
PyTopQuarkAnalysisConfiguration := self/src/TopQuarkAnalysis/Configuration/python
PyTopQuarkAnalysisConfiguration_files := $(patsubst src/TopQuarkAnalysis/Configuration/python/%,%,$(wildcard $(foreach dir,src/TopQuarkAnalysis/Configuration/python ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
PyTopQuarkAnalysisConfiguration_LOC_USE := self
ALL_PYTHON_DIRS += $(patsubst src/%,%,src/TopQuarkAnalysis/Configuration/python)
ALL_PRODS += PyTopQuarkAnalysisConfiguration
src_TopQuarkAnalysis_Configuration_python_parent := TopQuarkAnalysis/Configuration
PyTopQuarkAnalysisConfiguration_INIT_FUNC        += $$(eval $$(call PythonProduct,PyTopQuarkAnalysisConfiguration,src/TopQuarkAnalysis/Configuration/python,src_TopQuarkAnalysis_Configuration_python,1,1,$(SCRAMSTORENAME_PYTHON),$(SCRAMSTORENAME_LIB),,))
else
$(eval $(call MultipleWarningMsg,PyTopQuarkAnalysisConfiguration,src/TopQuarkAnalysis/Configuration/python))
endif
ALL_COMMONRULES += src_TopQuarkAnalysis_Configuration_python
src_TopQuarkAnalysis_Configuration_python_INIT_FUNC += $$(eval $$(call CommonProductRules,src_TopQuarkAnalysis_Configuration_python,src/TopQuarkAnalysis/Configuration/python,PYTHON))
ALL_COMMONRULES += src_TopQuarkAnalysis_Configuration_test
src_TopQuarkAnalysis_Configuration_test_parent := TopQuarkAnalysis/Configuration
src_TopQuarkAnalysis_Configuration_test_INIT_FUNC += $$(eval $$(call CommonProductRules,src_TopQuarkAnalysis_Configuration_test,src/TopQuarkAnalysis/Configuration/test,TEST))
ALL_PACKAGES += $(patsubst src/%,%,src/TopQuarkAnalysis/Examples)
subdirs_src_TopQuarkAnalysis_Examples := src_TopQuarkAnalysis_Examples_bin src_TopQuarkAnalysis_Examples_plugins src_TopQuarkAnalysis_Examples_python src_TopQuarkAnalysis_Examples_test
ifeq ($(strip $(TopJetFWLiteAnalyzer)),)
TopJetFWLiteAnalyzer_files := $(patsubst src/TopQuarkAnalysis/Examples/bin/%,%,$(foreach file,TopJetFWLiteAnalyzer.cc,$(eval xfile:=$(wildcard src/TopQuarkAnalysis/Examples/bin/$(file)))$(if $(xfile),$(xfile),$(warning No such file exists: src/TopQuarkAnalysis/Examples/bin/$(file). Please fix src/TopQuarkAnalysis/Examples/bin/BuildFile.))))
TopJetFWLiteAnalyzer := self/src/TopQuarkAnalysis/Examples/bin
TopJetFWLiteAnalyzer_BuildFile    := $(WORKINGDIR)/cache/bf/src/TopQuarkAnalysis/Examples/bin/BuildFile
TopJetFWLiteAnalyzer_LOC_USE := self AnalysisDataFormats/TopObjects FWCore/FWLite FWCore/Framework rootcintex root
TopJetFWLiteAnalyzer_PACKAGE := self/src/TopQuarkAnalysis/Examples/bin
ALL_PRODS += TopJetFWLiteAnalyzer
TopJetFWLiteAnalyzer_INIT_FUNC        += $$(eval $$(call Binary,TopJetFWLiteAnalyzer,src/TopQuarkAnalysis/Examples/bin,src_TopQuarkAnalysis_Examples_bin,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_BIN),bin,$(SCRAMSTORENAME_LOGS)))
else
$(eval $(call MultipleWarningMsg,TopJetFWLiteAnalyzer,src/TopQuarkAnalysis/Examples/bin))
endif
ifeq ($(strip $(TopMuonFWLiteAnalyzer)),)
TopMuonFWLiteAnalyzer_files := $(patsubst src/TopQuarkAnalysis/Examples/bin/%,%,$(foreach file,TopMuonFWLiteAnalyzer.cc,$(eval xfile:=$(wildcard src/TopQuarkAnalysis/Examples/bin/$(file)))$(if $(xfile),$(xfile),$(warning No such file exists: src/TopQuarkAnalysis/Examples/bin/$(file). Please fix src/TopQuarkAnalysis/Examples/bin/BuildFile.))))
TopMuonFWLiteAnalyzer := self/src/TopQuarkAnalysis/Examples/bin
TopMuonFWLiteAnalyzer_BuildFile    := $(WORKINGDIR)/cache/bf/src/TopQuarkAnalysis/Examples/bin/BuildFile
TopMuonFWLiteAnalyzer_LOC_USE := self AnalysisDataFormats/TopObjects FWCore/FWLite FWCore/Framework rootcintex root
TopMuonFWLiteAnalyzer_PACKAGE := self/src/TopQuarkAnalysis/Examples/bin
ALL_PRODS += TopMuonFWLiteAnalyzer
TopMuonFWLiteAnalyzer_INIT_FUNC        += $$(eval $$(call Binary,TopMuonFWLiteAnalyzer,src/TopQuarkAnalysis/Examples/bin,src_TopQuarkAnalysis_Examples_bin,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_BIN),bin,$(SCRAMSTORENAME_LOGS)))
else
$(eval $(call MultipleWarningMsg,TopMuonFWLiteAnalyzer,src/TopQuarkAnalysis/Examples/bin))
endif
ifeq ($(strip $(TopHypothesisFWLiteAnalyzer)),)
TopHypothesisFWLiteAnalyzer_files := $(patsubst src/TopQuarkAnalysis/Examples/bin/%,%,$(foreach file,TopHypothesisFWLiteAnalyzer.cc,$(eval xfile:=$(wildcard src/TopQuarkAnalysis/Examples/bin/$(file)))$(if $(xfile),$(xfile),$(warning No such file exists: src/TopQuarkAnalysis/Examples/bin/$(file). Please fix src/TopQuarkAnalysis/Examples/bin/BuildFile.))))
TopHypothesisFWLiteAnalyzer := self/src/TopQuarkAnalysis/Examples/bin
TopHypothesisFWLiteAnalyzer_BuildFile    := $(WORKINGDIR)/cache/bf/src/TopQuarkAnalysis/Examples/bin/BuildFile
TopHypothesisFWLiteAnalyzer_LOC_USE := self AnalysisDataFormats/TopObjects FWCore/FWLite FWCore/Framework rootcintex root
TopHypothesisFWLiteAnalyzer_PACKAGE := self/src/TopQuarkAnalysis/Examples/bin
ALL_PRODS += TopHypothesisFWLiteAnalyzer
TopHypothesisFWLiteAnalyzer_INIT_FUNC        += $$(eval $$(call Binary,TopHypothesisFWLiteAnalyzer,src/TopQuarkAnalysis/Examples/bin,src_TopQuarkAnalysis_Examples_bin,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_BIN),bin,$(SCRAMSTORENAME_LOGS)))
else
$(eval $(call MultipleWarningMsg,TopHypothesisFWLiteAnalyzer,src/TopQuarkAnalysis/Examples/bin))
endif
ifeq ($(strip $(TopElecFWLiteAnalyzer)),)
TopElecFWLiteAnalyzer_files := $(patsubst src/TopQuarkAnalysis/Examples/bin/%,%,$(foreach file,TopElecFWLiteAnalyzer.cc,$(eval xfile:=$(wildcard src/TopQuarkAnalysis/Examples/bin/$(file)))$(if $(xfile),$(xfile),$(warning No such file exists: src/TopQuarkAnalysis/Examples/bin/$(file). Please fix src/TopQuarkAnalysis/Examples/bin/BuildFile.))))
TopElecFWLiteAnalyzer := self/src/TopQuarkAnalysis/Examples/bin
TopElecFWLiteAnalyzer_BuildFile    := $(WORKINGDIR)/cache/bf/src/TopQuarkAnalysis/Examples/bin/BuildFile
TopElecFWLiteAnalyzer_LOC_USE := self AnalysisDataFormats/TopObjects FWCore/FWLite FWCore/Framework rootcintex root
TopElecFWLiteAnalyzer_PACKAGE := self/src/TopQuarkAnalysis/Examples/bin
ALL_PRODS += TopElecFWLiteAnalyzer
TopElecFWLiteAnalyzer_INIT_FUNC        += $$(eval $$(call Binary,TopElecFWLiteAnalyzer,src/TopQuarkAnalysis/Examples/bin,src_TopQuarkAnalysis_Examples_bin,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_BIN),bin,$(SCRAMSTORENAME_LOGS)))
else
$(eval $(call MultipleWarningMsg,TopElecFWLiteAnalyzer,src/TopQuarkAnalysis/Examples/bin))
endif
ALL_COMMONRULES += src_TopQuarkAnalysis_Examples_bin
src_TopQuarkAnalysis_Examples_bin_parent := TopQuarkAnalysis/Examples
src_TopQuarkAnalysis_Examples_bin_INIT_FUNC += $$(eval $$(call CommonProductRules,src_TopQuarkAnalysis_Examples_bin,src/TopQuarkAnalysis/Examples/bin,BINARY))
ifeq ($(strip $(TopQuarkAnalysisExamplesPlugins)),)
TopQuarkAnalysisExamplesPlugins_files := $(patsubst src/TopQuarkAnalysis/Examples/plugins/%,%,$(foreach file,*.cc,$(eval xfile:=$(wildcard src/TopQuarkAnalysis/Examples/plugins/$(file)))$(if $(xfile),$(xfile),$(warning No such file exists: src/TopQuarkAnalysis/Examples/plugins/$(file). Please fix src/TopQuarkAnalysis/Examples/plugins/BuildFile.))))
TopQuarkAnalysisExamplesPlugins := self/src/TopQuarkAnalysis/Examples/plugins
TopQuarkAnalysisExamplesPlugins_BuildFile    := $(WORKINGDIR)/cache/bf/src/TopQuarkAnalysis/Examples/plugins/BuildFile
TopQuarkAnalysisExamplesPlugins_LOC_USE := self AnalysisDataFormats/TopObjects CommonTools/UtilAlgos FWCore/ServiceRegistry FWCore/MessageLogger FWCore/ParameterSet FWCore/Framework FWCore/Utilities root
TopQuarkAnalysisExamplesPlugins_PRE_INIT_FUNC += $$(eval $$(call edmPlugin,TopQuarkAnalysisExamplesPlugins,TopQuarkAnalysisExamplesPlugins,$(SCRAMSTORENAME_LIB)))
TopQuarkAnalysisExamplesPlugins_PACKAGE := self/src/TopQuarkAnalysis/Examples/plugins
ALL_PRODS += TopQuarkAnalysisExamplesPlugins
TopQuarkAnalysisExamplesPlugins_INIT_FUNC        += $$(eval $$(call Library,TopQuarkAnalysisExamplesPlugins,src/TopQuarkAnalysis/Examples/plugins,src_TopQuarkAnalysis_Examples_plugins,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS)))
else
$(eval $(call MultipleWarningMsg,TopQuarkAnalysisExamplesPlugins,src/TopQuarkAnalysis/Examples/plugins))
endif
ALL_COMMONRULES += src_TopQuarkAnalysis_Examples_plugins
src_TopQuarkAnalysis_Examples_plugins_parent := TopQuarkAnalysis/Examples
src_TopQuarkAnalysis_Examples_plugins_INIT_FUNC += $$(eval $$(call CommonProductRules,src_TopQuarkAnalysis_Examples_plugins,src/TopQuarkAnalysis/Examples/plugins,PLUGINS))
ALL_SUBSYSTEMS+=$(patsubst src/%,%,src/BEAN)
subdirs_src_BEAN = src_BEAN_BEANmaker src_BEAN_Collections src_BEAN_Q2Weights
ifeq ($(strip $(PyTopQuarkAnalysisExamples)),)
PyTopQuarkAnalysisExamples := self/src/TopQuarkAnalysis/Examples/python
PyTopQuarkAnalysisExamples_files := $(patsubst src/TopQuarkAnalysis/Examples/python/%,%,$(wildcard $(foreach dir,src/TopQuarkAnalysis/Examples/python ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
PyTopQuarkAnalysisExamples_LOC_USE := self
ALL_PYTHON_DIRS += $(patsubst src/%,%,src/TopQuarkAnalysis/Examples/python)
ALL_PRODS += PyTopQuarkAnalysisExamples
src_TopQuarkAnalysis_Examples_python_parent := TopQuarkAnalysis/Examples
PyTopQuarkAnalysisExamples_INIT_FUNC        += $$(eval $$(call PythonProduct,PyTopQuarkAnalysisExamples,src/TopQuarkAnalysis/Examples/python,src_TopQuarkAnalysis_Examples_python,1,1,$(SCRAMSTORENAME_PYTHON),$(SCRAMSTORENAME_LIB),,))
else
$(eval $(call MultipleWarningMsg,PyTopQuarkAnalysisExamples,src/TopQuarkAnalysis/Examples/python))
endif
ALL_COMMONRULES += src_TopQuarkAnalysis_Examples_python
src_TopQuarkAnalysis_Examples_python_INIT_FUNC += $$(eval $$(call CommonProductRules,src_TopQuarkAnalysis_Examples_python,src/TopQuarkAnalysis/Examples/python,PYTHON))
ifeq ($(strip $(runtestTqafExamples)),)
runtestTqafExamples_files := $(patsubst src/TopQuarkAnalysis/Examples/test/%,%,$(foreach file,runtestTqafExamples.cpp,$(eval xfile:=$(wildcard src/TopQuarkAnalysis/Examples/test/$(file)))$(if $(xfile),$(xfile),$(warning No such file exists: src/TopQuarkAnalysis/Examples/test/$(file). Please fix src/TopQuarkAnalysis/Examples/test/BuildFile.))))
runtestTqafExamples := self/src/TopQuarkAnalysis/Examples/test
runtestTqafExamples_TEST_RUNNER_CMD :=  runtestTqafExamples  /bin/bash TopQuarkAnalysis/Examples/test runtests.sh
runtestTqafExamples_BuildFile    := $(WORKINGDIR)/cache/bf/src/TopQuarkAnalysis/Examples/test/BuildFile
runtestTqafExamples_LOC_USE := self FWCore/Utilities
runtestTqafExamples_PACKAGE := self/src/TopQuarkAnalysis/Examples/test
ALL_PRODS += runtestTqafExamples
runtestTqafExamples_INIT_FUNC        += $$(eval $$(call Binary,runtestTqafExamples,src/TopQuarkAnalysis/Examples/test,src_TopQuarkAnalysis_Examples_test,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_TEST),test,$(SCRAMSTORENAME_LOGS)))
else
$(eval $(call MultipleWarningMsg,runtestTqafExamples,src/TopQuarkAnalysis/Examples/test))
endif
ALL_COMMONRULES += src_TopQuarkAnalysis_Examples_test
src_TopQuarkAnalysis_Examples_test_parent := TopQuarkAnalysis/Examples
src_TopQuarkAnalysis_Examples_test_INIT_FUNC += $$(eval $$(call CommonProductRules,src_TopQuarkAnalysis_Examples_test,src/TopQuarkAnalysis/Examples/test,TEST))
ALL_PACKAGES += $(patsubst src/%,%,src/TopQuarkAnalysis/TopEventProducers)
subdirs_src_TopQuarkAnalysis_TopEventProducers := src_TopQuarkAnalysis_TopEventProducers_doc src_TopQuarkAnalysis_TopEventProducers_python src_TopQuarkAnalysis_TopEventProducers_src src_TopQuarkAnalysis_TopEventProducers_test
ifeq ($(strip $(PyTopQuarkAnalysisTopEventProducers)),)
PyTopQuarkAnalysisTopEventProducers := self/src/TopQuarkAnalysis/TopEventProducers/python
PyTopQuarkAnalysisTopEventProducers_files := $(patsubst src/TopQuarkAnalysis/TopEventProducers/python/%,%,$(wildcard $(foreach dir,src/TopQuarkAnalysis/TopEventProducers/python ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
PyTopQuarkAnalysisTopEventProducers_LOC_USE := self
ALL_PYTHON_DIRS += $(patsubst src/%,%,src/TopQuarkAnalysis/TopEventProducers/python)
ALL_PRODS += PyTopQuarkAnalysisTopEventProducers
src_TopQuarkAnalysis_TopEventProducers_python_parent := TopQuarkAnalysis/TopEventProducers
PyTopQuarkAnalysisTopEventProducers_INIT_FUNC        += $$(eval $$(call PythonProduct,PyTopQuarkAnalysisTopEventProducers,src/TopQuarkAnalysis/TopEventProducers/python,src_TopQuarkAnalysis_TopEventProducers_python,1,1,$(SCRAMSTORENAME_PYTHON),$(SCRAMSTORENAME_LIB),,))
else
$(eval $(call MultipleWarningMsg,PyTopQuarkAnalysisTopEventProducers,src/TopQuarkAnalysis/TopEventProducers/python))
endif
ALL_COMMONRULES += src_TopQuarkAnalysis_TopEventProducers_python
src_TopQuarkAnalysis_TopEventProducers_python_INIT_FUNC += $$(eval $$(call CommonProductRules,src_TopQuarkAnalysis_TopEventProducers_python,src/TopQuarkAnalysis/TopEventProducers/python,PYTHON))
ifeq ($(strip $(runtestTqafTopEventProducers)),)
runtestTqafTopEventProducers_files := $(patsubst src/TopQuarkAnalysis/TopEventProducers/test/%,%,$(foreach file,runtestTqafTopEventProducers.cpp,$(eval xfile:=$(wildcard src/TopQuarkAnalysis/TopEventProducers/test/$(file)))$(if $(xfile),$(xfile),$(warning No such file exists: src/TopQuarkAnalysis/TopEventProducers/test/$(file). Please fix src/TopQuarkAnalysis/TopEventProducers/test/BuildFile.))))
runtestTqafTopEventProducers := self/src/TopQuarkAnalysis/TopEventProducers/test
runtestTqafTopEventProducers_TEST_RUNNER_CMD :=  runtestTqafTopEventProducers  /bin/bash TopQuarkAnalysis/TopEventProducers/test runtests.sh
runtestTqafTopEventProducers_BuildFile    := $(WORKINGDIR)/cache/bf/src/TopQuarkAnalysis/TopEventProducers/test/BuildFile
runtestTqafTopEventProducers_LOC_USE := self FWCore/Utilities
runtestTqafTopEventProducers_PACKAGE := self/src/TopQuarkAnalysis/TopEventProducers/test
ALL_PRODS += runtestTqafTopEventProducers
runtestTqafTopEventProducers_INIT_FUNC        += $$(eval $$(call Binary,runtestTqafTopEventProducers,src/TopQuarkAnalysis/TopEventProducers/test,src_TopQuarkAnalysis_TopEventProducers_test,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_TEST),test,$(SCRAMSTORENAME_LOGS)))
else
$(eval $(call MultipleWarningMsg,runtestTqafTopEventProducers,src/TopQuarkAnalysis/TopEventProducers/test))
endif
ALL_COMMONRULES += src_TopQuarkAnalysis_TopEventProducers_test
src_TopQuarkAnalysis_TopEventProducers_test_parent := TopQuarkAnalysis/TopEventProducers
src_TopQuarkAnalysis_TopEventProducers_test_INIT_FUNC += $$(eval $$(call CommonProductRules,src_TopQuarkAnalysis_TopEventProducers_test,src/TopQuarkAnalysis/TopEventProducers/test,TEST))
ALL_PACKAGES += $(patsubst src/%,%,src/TopQuarkAnalysis/TopEventSelection)
subdirs_src_TopQuarkAnalysis_TopEventSelection := src_TopQuarkAnalysis_TopEventSelection_bin src_TopQuarkAnalysis_TopEventSelection_data src_TopQuarkAnalysis_TopEventSelection_doc src_TopQuarkAnalysis_TopEventSelection_plugins src_TopQuarkAnalysis_TopEventSelection_python src_TopQuarkAnalysis_TopEventSelection_src src_TopQuarkAnalysis_TopEventSelection_test
ifeq ($(strip $(TtSemiLRSignalSel_PurityLoop)),)
TtSemiLRSignalSel_PurityLoop_files := $(patsubst src/TopQuarkAnalysis/TopEventSelection/bin/%,%,$(foreach file,TtSemiLRSignalSel_PurityLoop.cpp,$(eval xfile:=$(wildcard src/TopQuarkAnalysis/TopEventSelection/bin/$(file)))$(if $(xfile),$(xfile),$(warning No such file exists: src/TopQuarkAnalysis/TopEventSelection/bin/$(file). Please fix src/TopQuarkAnalysis/TopEventSelection/bin/BuildFile.))))
TtSemiLRSignalSel_PurityLoop := self/src/TopQuarkAnalysis/TopEventSelection/bin
TtSemiLRSignalSel_PurityLoop_BuildFile    := $(WORKINGDIR)/cache/bf/src/TopQuarkAnalysis/TopEventSelection/bin/BuildFile
TtSemiLRSignalSel_PurityLoop_LOC_USE := self AnalysisDataFormats/TopObjects TopQuarkAnalysis/TopTools FWCore/FWLite FWCore/Framework rootcintex root
TtSemiLRSignalSel_PurityLoop_PACKAGE := self/src/TopQuarkAnalysis/TopEventSelection/bin
ALL_PRODS += TtSemiLRSignalSel_PurityLoop
TtSemiLRSignalSel_PurityLoop_INIT_FUNC        += $$(eval $$(call Binary,TtSemiLRSignalSel_PurityLoop,src/TopQuarkAnalysis/TopEventSelection/bin,src_TopQuarkAnalysis_TopEventSelection_bin,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_BIN),bin,$(SCRAMSTORENAME_LOGS)))
else
$(eval $(call MultipleWarningMsg,TtSemiLRSignalSel_PurityLoop,src/TopQuarkAnalysis/TopEventSelection/bin))
endif
ifeq ($(strip $(TtSemiLRSignalSel_SoverSplusBLoop)),)
TtSemiLRSignalSel_SoverSplusBLoop_files := $(patsubst src/TopQuarkAnalysis/TopEventSelection/bin/%,%,$(foreach file,TtSemiLRSignalSel_SoverSplusBLoop.cpp,$(eval xfile:=$(wildcard src/TopQuarkAnalysis/TopEventSelection/bin/$(file)))$(if $(xfile),$(xfile),$(warning No such file exists: src/TopQuarkAnalysis/TopEventSelection/bin/$(file). Please fix src/TopQuarkAnalysis/TopEventSelection/bin/BuildFile.))))
TtSemiLRSignalSel_SoverSplusBLoop := self/src/TopQuarkAnalysis/TopEventSelection/bin
TtSemiLRSignalSel_SoverSplusBLoop_BuildFile    := $(WORKINGDIR)/cache/bf/src/TopQuarkAnalysis/TopEventSelection/bin/BuildFile
TtSemiLRSignalSel_SoverSplusBLoop_LOC_USE := self AnalysisDataFormats/TopObjects TopQuarkAnalysis/TopTools FWCore/FWLite FWCore/Framework rootcintex root
TtSemiLRSignalSel_SoverSplusBLoop_PACKAGE := self/src/TopQuarkAnalysis/TopEventSelection/bin
ALL_PRODS += TtSemiLRSignalSel_SoverSplusBLoop
TtSemiLRSignalSel_SoverSplusBLoop_INIT_FUNC        += $$(eval $$(call Binary,TtSemiLRSignalSel_SoverSplusBLoop,src/TopQuarkAnalysis/TopEventSelection/bin,src_TopQuarkAnalysis_TopEventSelection_bin,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_BIN),bin,$(SCRAMSTORENAME_LOGS)))
else
$(eval $(call MultipleWarningMsg,TtSemiLRSignalSel_SoverSplusBLoop,src/TopQuarkAnalysis/TopEventSelection/bin))
endif
ALL_COMMONRULES += src_TopQuarkAnalysis_TopEventSelection_bin
src_TopQuarkAnalysis_TopEventSelection_bin_parent := TopQuarkAnalysis/TopEventSelection
src_TopQuarkAnalysis_TopEventSelection_bin_INIT_FUNC += $$(eval $$(call CommonProductRules,src_TopQuarkAnalysis_TopEventSelection_bin,src/TopQuarkAnalysis/TopEventSelection/bin,BINARY))
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
ifeq ($(strip $(PyTopQuarkAnalysisTopEventSelection)),)
PyTopQuarkAnalysisTopEventSelection := self/src/TopQuarkAnalysis/TopEventSelection/python
PyTopQuarkAnalysisTopEventSelection_files := $(patsubst src/TopQuarkAnalysis/TopEventSelection/python/%,%,$(wildcard $(foreach dir,src/TopQuarkAnalysis/TopEventSelection/python ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
PyTopQuarkAnalysisTopEventSelection_LOC_USE := self
ALL_PYTHON_DIRS += $(patsubst src/%,%,src/TopQuarkAnalysis/TopEventSelection/python)
ALL_PRODS += PyTopQuarkAnalysisTopEventSelection
src_TopQuarkAnalysis_TopEventSelection_python_parent := TopQuarkAnalysis/TopEventSelection
PyTopQuarkAnalysisTopEventSelection_INIT_FUNC        += $$(eval $$(call PythonProduct,PyTopQuarkAnalysisTopEventSelection,src/TopQuarkAnalysis/TopEventSelection/python,src_TopQuarkAnalysis_TopEventSelection_python,1,1,$(SCRAMSTORENAME_PYTHON),$(SCRAMSTORENAME_LIB),,))
else
$(eval $(call MultipleWarningMsg,PyTopQuarkAnalysisTopEventSelection,src/TopQuarkAnalysis/TopEventSelection/python))
endif
ALL_COMMONRULES += src_TopQuarkAnalysis_TopEventSelection_python
src_TopQuarkAnalysis_TopEventSelection_python_INIT_FUNC += $$(eval $$(call CommonProductRules,src_TopQuarkAnalysis_TopEventSelection_python,src/TopQuarkAnalysis/TopEventSelection/python,PYTHON))
ifeq ($(strip $(runtestTqafTopEventSelection)),)
runtestTqafTopEventSelection_files := $(patsubst src/TopQuarkAnalysis/TopEventSelection/test/%,%,$(foreach file,runtestTqafTopEventSelection.cpp,$(eval xfile:=$(wildcard src/TopQuarkAnalysis/TopEventSelection/test/$(file)))$(if $(xfile),$(xfile),$(warning No such file exists: src/TopQuarkAnalysis/TopEventSelection/test/$(file). Please fix src/TopQuarkAnalysis/TopEventSelection/test/BuildFile.))))
runtestTqafTopEventSelection := self/src/TopQuarkAnalysis/TopEventSelection/test
runtestTqafTopEventSelection_TEST_RUNNER_CMD :=  runtestTqafTopEventSelection  /bin/bash TopQuarkAnalysis/TopEventSelection/test runtests.sh
runtestTqafTopEventSelection_BuildFile    := $(WORKINGDIR)/cache/bf/src/TopQuarkAnalysis/TopEventSelection/test/BuildFile
runtestTqafTopEventSelection_LOC_USE := self FWCore/Utilities
runtestTqafTopEventSelection_PACKAGE := self/src/TopQuarkAnalysis/TopEventSelection/test
ALL_PRODS += runtestTqafTopEventSelection
runtestTqafTopEventSelection_INIT_FUNC        += $$(eval $$(call Binary,runtestTqafTopEventSelection,src/TopQuarkAnalysis/TopEventSelection/test,src_TopQuarkAnalysis_TopEventSelection_test,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_TEST),test,$(SCRAMSTORENAME_LOGS)))
else
$(eval $(call MultipleWarningMsg,runtestTqafTopEventSelection,src/TopQuarkAnalysis/TopEventSelection/test))
endif
ALL_COMMONRULES += src_TopQuarkAnalysis_TopEventSelection_test
src_TopQuarkAnalysis_TopEventSelection_test_parent := TopQuarkAnalysis/TopEventSelection
src_TopQuarkAnalysis_TopEventSelection_test_INIT_FUNC += $$(eval $$(call CommonProductRules,src_TopQuarkAnalysis_TopEventSelection_test,src/TopQuarkAnalysis/TopEventSelection/test,TEST))
ALL_PACKAGES += $(patsubst src/%,%,src/TopQuarkAnalysis/TopHitFit)
subdirs_src_TopQuarkAnalysis_TopHitFit := src_TopQuarkAnalysis_TopHitFit_data src_TopQuarkAnalysis_TopHitFit_plugins src_TopQuarkAnalysis_TopHitFit_python src_TopQuarkAnalysis_TopHitFit_src src_TopQuarkAnalysis_TopHitFit_test
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
ifeq ($(strip $(PyTopQuarkAnalysisTopHitFit)),)
PyTopQuarkAnalysisTopHitFit := self/src/TopQuarkAnalysis/TopHitFit/python
PyTopQuarkAnalysisTopHitFit_files := $(patsubst src/TopQuarkAnalysis/TopHitFit/python/%,%,$(wildcard $(foreach dir,src/TopQuarkAnalysis/TopHitFit/python ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
PyTopQuarkAnalysisTopHitFit_LOC_USE := self
ALL_PYTHON_DIRS += $(patsubst src/%,%,src/TopQuarkAnalysis/TopHitFit/python)
ALL_PRODS += PyTopQuarkAnalysisTopHitFit
src_TopQuarkAnalysis_TopHitFit_python_parent := TopQuarkAnalysis/TopHitFit
PyTopQuarkAnalysisTopHitFit_INIT_FUNC        += $$(eval $$(call PythonProduct,PyTopQuarkAnalysisTopHitFit,src/TopQuarkAnalysis/TopHitFit/python,src_TopQuarkAnalysis_TopHitFit_python,1,1,$(SCRAMSTORENAME_PYTHON),$(SCRAMSTORENAME_LIB),,))
else
$(eval $(call MultipleWarningMsg,PyTopQuarkAnalysisTopHitFit,src/TopQuarkAnalysis/TopHitFit/python))
endif
ALL_COMMONRULES += src_TopQuarkAnalysis_TopHitFit_python
src_TopQuarkAnalysis_TopHitFit_python_INIT_FUNC += $$(eval $$(call CommonProductRules,src_TopQuarkAnalysis_TopHitFit_python,src/TopQuarkAnalysis/TopHitFit/python,PYTHON))
ifeq ($(strip $(runtestTqafTopHitFit)),)
runtestTqafTopHitFit_files := $(patsubst src/TopQuarkAnalysis/TopHitFit/test/%,%,$(foreach file,runtestTqafTopHitFit.cpp,$(eval xfile:=$(wildcard src/TopQuarkAnalysis/TopHitFit/test/$(file)))$(if $(xfile),$(xfile),$(warning No such file exists: src/TopQuarkAnalysis/TopHitFit/test/$(file). Please fix src/TopQuarkAnalysis/TopHitFit/test/BuildFile.))))
runtestTqafTopHitFit := self/src/TopQuarkAnalysis/TopHitFit/test
runtestTqafTopHitFit_TEST_RUNNER_CMD :=  runtestTqafTopHitFit  /bin/bash TopQuarkAnalysis/TopHitFit/test runtests.sh
runtestTqafTopHitFit_BuildFile    := $(WORKINGDIR)/cache/bf/src/TopQuarkAnalysis/TopHitFit/test/BuildFile
runtestTqafTopHitFit_LOC_USE := self FWCore/Utilities
runtestTqafTopHitFit_PACKAGE := self/src/TopQuarkAnalysis/TopHitFit/test
ALL_PRODS += runtestTqafTopHitFit
runtestTqafTopHitFit_INIT_FUNC        += $$(eval $$(call Binary,runtestTqafTopHitFit,src/TopQuarkAnalysis/TopHitFit/test,src_TopQuarkAnalysis_TopHitFit_test,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_TEST),test,$(SCRAMSTORENAME_LOGS)))
else
$(eval $(call MultipleWarningMsg,runtestTqafTopHitFit,src/TopQuarkAnalysis/TopHitFit/test))
endif
ALL_COMMONRULES += src_TopQuarkAnalysis_TopHitFit_test
src_TopQuarkAnalysis_TopHitFit_test_parent := TopQuarkAnalysis/TopHitFit
src_TopQuarkAnalysis_TopHitFit_test_INIT_FUNC += $$(eval $$(call CommonProductRules,src_TopQuarkAnalysis_TopHitFit_test,src/TopQuarkAnalysis/TopHitFit/test,TEST))
ALL_PACKAGES += $(patsubst src/%,%,src/TopQuarkAnalysis/TopJetCombination)
subdirs_src_TopQuarkAnalysis_TopJetCombination := src_TopQuarkAnalysis_TopJetCombination_bin src_TopQuarkAnalysis_TopJetCombination_data src_TopQuarkAnalysis_TopJetCombination_doc src_TopQuarkAnalysis_TopJetCombination_interface src_TopQuarkAnalysis_TopJetCombination_plugins src_TopQuarkAnalysis_TopJetCombination_python src_TopQuarkAnalysis_TopJetCombination_src src_TopQuarkAnalysis_TopJetCombination_test
ifeq ($(strip $(TtSemiLRJetComb_SoverSplusBLoop)),)
TtSemiLRJetComb_SoverSplusBLoop_files := $(patsubst src/TopQuarkAnalysis/TopJetCombination/bin/%,%,$(foreach file,TtSemiLRJetComb_SoverSplusBLoop.cpp,$(eval xfile:=$(wildcard src/TopQuarkAnalysis/TopJetCombination/bin/$(file)))$(if $(xfile),$(xfile),$(warning No such file exists: src/TopQuarkAnalysis/TopJetCombination/bin/$(file). Please fix src/TopQuarkAnalysis/TopJetCombination/bin/BuildFile.))))
TtSemiLRJetComb_SoverSplusBLoop := self/src/TopQuarkAnalysis/TopJetCombination/bin
TtSemiLRJetComb_SoverSplusBLoop_BuildFile    := $(WORKINGDIR)/cache/bf/src/TopQuarkAnalysis/TopJetCombination/bin/BuildFile
TtSemiLRJetComb_SoverSplusBLoop_LOC_USE := self AnalysisDataFormats/TopObjects TopQuarkAnalysis/TopTools FWCore/FWLite FWCore/Framework rootcintex root
TtSemiLRJetComb_SoverSplusBLoop_PACKAGE := self/src/TopQuarkAnalysis/TopJetCombination/bin
ALL_PRODS += TtSemiLRJetComb_SoverSplusBLoop
TtSemiLRJetComb_SoverSplusBLoop_INIT_FUNC        += $$(eval $$(call Binary,TtSemiLRJetComb_SoverSplusBLoop,src/TopQuarkAnalysis/TopJetCombination/bin,src_TopQuarkAnalysis_TopJetCombination_bin,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_BIN),bin,$(SCRAMSTORENAME_LOGS)))
else
$(eval $(call MultipleWarningMsg,TtSemiLRJetComb_SoverSplusBLoop,src/TopQuarkAnalysis/TopJetCombination/bin))
endif
ifeq ($(strip $(TtSemiLRJetComb_PurityLoop)),)
TtSemiLRJetComb_PurityLoop_files := $(patsubst src/TopQuarkAnalysis/TopJetCombination/bin/%,%,$(foreach file,TtSemiLRJetComb_PurityLoop.cpp,$(eval xfile:=$(wildcard src/TopQuarkAnalysis/TopJetCombination/bin/$(file)))$(if $(xfile),$(xfile),$(warning No such file exists: src/TopQuarkAnalysis/TopJetCombination/bin/$(file). Please fix src/TopQuarkAnalysis/TopJetCombination/bin/BuildFile.))))
TtSemiLRJetComb_PurityLoop := self/src/TopQuarkAnalysis/TopJetCombination/bin
TtSemiLRJetComb_PurityLoop_BuildFile    := $(WORKINGDIR)/cache/bf/src/TopQuarkAnalysis/TopJetCombination/bin/BuildFile
TtSemiLRJetComb_PurityLoop_LOC_USE := self AnalysisDataFormats/TopObjects TopQuarkAnalysis/TopTools FWCore/FWLite FWCore/Framework rootcintex root
TtSemiLRJetComb_PurityLoop_PACKAGE := self/src/TopQuarkAnalysis/TopJetCombination/bin
ALL_PRODS += TtSemiLRJetComb_PurityLoop
TtSemiLRJetComb_PurityLoop_INIT_FUNC        += $$(eval $$(call Binary,TtSemiLRJetComb_PurityLoop,src/TopQuarkAnalysis/TopJetCombination/bin,src_TopQuarkAnalysis_TopJetCombination_bin,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_BIN),bin,$(SCRAMSTORENAME_LOGS)))
else
$(eval $(call MultipleWarningMsg,TtSemiLRJetComb_PurityLoop,src/TopQuarkAnalysis/TopJetCombination/bin))
endif
ALL_COMMONRULES += src_TopQuarkAnalysis_TopJetCombination_bin
src_TopQuarkAnalysis_TopJetCombination_bin_parent := TopQuarkAnalysis/TopJetCombination
src_TopQuarkAnalysis_TopJetCombination_bin_INIT_FUNC += $$(eval $$(call CommonProductRules,src_TopQuarkAnalysis_TopJetCombination_bin,src/TopQuarkAnalysis/TopJetCombination/bin,BINARY))
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
ifeq ($(strip $(PyTopQuarkAnalysisTopJetCombination)),)
PyTopQuarkAnalysisTopJetCombination := self/src/TopQuarkAnalysis/TopJetCombination/python
PyTopQuarkAnalysisTopJetCombination_files := $(patsubst src/TopQuarkAnalysis/TopJetCombination/python/%,%,$(wildcard $(foreach dir,src/TopQuarkAnalysis/TopJetCombination/python ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
PyTopQuarkAnalysisTopJetCombination_LOC_USE := self
ALL_PYTHON_DIRS += $(patsubst src/%,%,src/TopQuarkAnalysis/TopJetCombination/python)
ALL_PRODS += PyTopQuarkAnalysisTopJetCombination
src_TopQuarkAnalysis_TopJetCombination_python_parent := TopQuarkAnalysis/TopJetCombination
PyTopQuarkAnalysisTopJetCombination_INIT_FUNC        += $$(eval $$(call PythonProduct,PyTopQuarkAnalysisTopJetCombination,src/TopQuarkAnalysis/TopJetCombination/python,src_TopQuarkAnalysis_TopJetCombination_python,1,1,$(SCRAMSTORENAME_PYTHON),$(SCRAMSTORENAME_LIB),,))
else
$(eval $(call MultipleWarningMsg,PyTopQuarkAnalysisTopJetCombination,src/TopQuarkAnalysis/TopJetCombination/python))
endif
ALL_COMMONRULES += src_TopQuarkAnalysis_TopJetCombination_python
src_TopQuarkAnalysis_TopJetCombination_python_INIT_FUNC += $$(eval $$(call CommonProductRules,src_TopQuarkAnalysis_TopJetCombination_python,src/TopQuarkAnalysis/TopJetCombination/python,PYTHON))
ifeq ($(strip $(runtestTqafTopJetCombination)),)
runtestTqafTopJetCombination_files := $(patsubst src/TopQuarkAnalysis/TopJetCombination/test/%,%,$(foreach file,runtestTqafTopJetCombination.cpp,$(eval xfile:=$(wildcard src/TopQuarkAnalysis/TopJetCombination/test/$(file)))$(if $(xfile),$(xfile),$(warning No such file exists: src/TopQuarkAnalysis/TopJetCombination/test/$(file). Please fix src/TopQuarkAnalysis/TopJetCombination/test/BuildFile.))))
runtestTqafTopJetCombination := self/src/TopQuarkAnalysis/TopJetCombination/test
runtestTqafTopJetCombination_TEST_RUNNER_CMD :=  runtestTqafTopJetCombination  /bin/bash TopQuarkAnalysis/TopJetCombination/test runtests.sh
runtestTqafTopJetCombination_BuildFile    := $(WORKINGDIR)/cache/bf/src/TopQuarkAnalysis/TopJetCombination/test/BuildFile
runtestTqafTopJetCombination_LOC_USE := self FWCore/Utilities
runtestTqafTopJetCombination_PACKAGE := self/src/TopQuarkAnalysis/TopJetCombination/test
ALL_PRODS += runtestTqafTopJetCombination
runtestTqafTopJetCombination_INIT_FUNC        += $$(eval $$(call Binary,runtestTqafTopJetCombination,src/TopQuarkAnalysis/TopJetCombination/test,src_TopQuarkAnalysis_TopJetCombination_test,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_TEST),test,$(SCRAMSTORENAME_LOGS)))
else
$(eval $(call MultipleWarningMsg,runtestTqafTopJetCombination,src/TopQuarkAnalysis/TopJetCombination/test))
endif
ALL_COMMONRULES += src_TopQuarkAnalysis_TopJetCombination_test
src_TopQuarkAnalysis_TopJetCombination_test_parent := TopQuarkAnalysis/TopJetCombination
src_TopQuarkAnalysis_TopJetCombination_test_INIT_FUNC += $$(eval $$(call CommonProductRules,src_TopQuarkAnalysis_TopJetCombination_test,src/TopQuarkAnalysis/TopJetCombination/test,TEST))
ALL_PACKAGES += $(patsubst src/%,%,src/TopQuarkAnalysis/TopKinFitter)
subdirs_src_TopQuarkAnalysis_TopKinFitter := src_TopQuarkAnalysis_TopKinFitter_interface src_TopQuarkAnalysis_TopKinFitter_plugins src_TopQuarkAnalysis_TopKinFitter_python src_TopQuarkAnalysis_TopKinFitter_src src_TopQuarkAnalysis_TopKinFitter_test
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
ifeq ($(strip $(PyTopQuarkAnalysisTopKinFitter)),)
PyTopQuarkAnalysisTopKinFitter := self/src/TopQuarkAnalysis/TopKinFitter/python
PyTopQuarkAnalysisTopKinFitter_files := $(patsubst src/TopQuarkAnalysis/TopKinFitter/python/%,%,$(wildcard $(foreach dir,src/TopQuarkAnalysis/TopKinFitter/python ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
PyTopQuarkAnalysisTopKinFitter_LOC_USE := self
ALL_PYTHON_DIRS += $(patsubst src/%,%,src/TopQuarkAnalysis/TopKinFitter/python)
ALL_PRODS += PyTopQuarkAnalysisTopKinFitter
src_TopQuarkAnalysis_TopKinFitter_python_parent := TopQuarkAnalysis/TopKinFitter
PyTopQuarkAnalysisTopKinFitter_INIT_FUNC        += $$(eval $$(call PythonProduct,PyTopQuarkAnalysisTopKinFitter,src/TopQuarkAnalysis/TopKinFitter/python,src_TopQuarkAnalysis_TopKinFitter_python,1,1,$(SCRAMSTORENAME_PYTHON),$(SCRAMSTORENAME_LIB),,))
else
$(eval $(call MultipleWarningMsg,PyTopQuarkAnalysisTopKinFitter,src/TopQuarkAnalysis/TopKinFitter/python))
endif
ALL_COMMONRULES += src_TopQuarkAnalysis_TopKinFitter_python
src_TopQuarkAnalysis_TopKinFitter_python_INIT_FUNC += $$(eval $$(call CommonProductRules,src_TopQuarkAnalysis_TopKinFitter_python,src/TopQuarkAnalysis/TopKinFitter/python,PYTHON))
ifeq ($(strip $(runtestTqafTopKinFitter)),)
runtestTqafTopKinFitter_files := $(patsubst src/TopQuarkAnalysis/TopKinFitter/test/%,%,$(foreach file,runtestTqafTopKinFitter.cpp,$(eval xfile:=$(wildcard src/TopQuarkAnalysis/TopKinFitter/test/$(file)))$(if $(xfile),$(xfile),$(warning No such file exists: src/TopQuarkAnalysis/TopKinFitter/test/$(file). Please fix src/TopQuarkAnalysis/TopKinFitter/test/BuildFile.))))
runtestTqafTopKinFitter := self/src/TopQuarkAnalysis/TopKinFitter/test
runtestTqafTopKinFitter_TEST_RUNNER_CMD :=  runtestTqafTopKinFitter  /bin/bash TopQuarkAnalysis/TopKinFitter/test runtests.sh
runtestTqafTopKinFitter_BuildFile    := $(WORKINGDIR)/cache/bf/src/TopQuarkAnalysis/TopKinFitter/test/BuildFile
runtestTqafTopKinFitter_LOC_USE := self FWCore/Utilities
runtestTqafTopKinFitter_PACKAGE := self/src/TopQuarkAnalysis/TopKinFitter/test
ALL_PRODS += runtestTqafTopKinFitter
runtestTqafTopKinFitter_INIT_FUNC        += $$(eval $$(call Binary,runtestTqafTopKinFitter,src/TopQuarkAnalysis/TopKinFitter/test,src_TopQuarkAnalysis_TopKinFitter_test,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_TEST),test,$(SCRAMSTORENAME_LOGS)))
else
$(eval $(call MultipleWarningMsg,runtestTqafTopKinFitter,src/TopQuarkAnalysis/TopKinFitter/test))
endif
ALL_COMMONRULES += src_TopQuarkAnalysis_TopKinFitter_test
src_TopQuarkAnalysis_TopKinFitter_test_parent := TopQuarkAnalysis/TopKinFitter
src_TopQuarkAnalysis_TopKinFitter_test_INIT_FUNC += $$(eval $$(call CommonProductRules,src_TopQuarkAnalysis_TopKinFitter_test,src/TopQuarkAnalysis/TopKinFitter/test,TEST))
ALL_PACKAGES += $(patsubst src/%,%,src/TopQuarkAnalysis/TopObjectResolutions)
subdirs_src_TopQuarkAnalysis_TopObjectResolutions := src_TopQuarkAnalysis_TopObjectResolutions_doc src_TopQuarkAnalysis_TopObjectResolutions_interface src_TopQuarkAnalysis_TopObjectResolutions_python src_TopQuarkAnalysis_TopObjectResolutions_src
ifeq ($(strip $(PyTopQuarkAnalysisTopObjectResolutions)),)
PyTopQuarkAnalysisTopObjectResolutions := self/src/TopQuarkAnalysis/TopObjectResolutions/python
PyTopQuarkAnalysisTopObjectResolutions_files := $(patsubst src/TopQuarkAnalysis/TopObjectResolutions/python/%,%,$(wildcard $(foreach dir,src/TopQuarkAnalysis/TopObjectResolutions/python ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
PyTopQuarkAnalysisTopObjectResolutions_LOC_USE := self
ALL_PYTHON_DIRS += $(patsubst src/%,%,src/TopQuarkAnalysis/TopObjectResolutions/python)
ALL_PRODS += PyTopQuarkAnalysisTopObjectResolutions
src_TopQuarkAnalysis_TopObjectResolutions_python_parent := TopQuarkAnalysis/TopObjectResolutions
PyTopQuarkAnalysisTopObjectResolutions_INIT_FUNC        += $$(eval $$(call PythonProduct,PyTopQuarkAnalysisTopObjectResolutions,src/TopQuarkAnalysis/TopObjectResolutions/python,src_TopQuarkAnalysis_TopObjectResolutions_python,1,1,$(SCRAMSTORENAME_PYTHON),$(SCRAMSTORENAME_LIB),,))
else
$(eval $(call MultipleWarningMsg,PyTopQuarkAnalysisTopObjectResolutions,src/TopQuarkAnalysis/TopObjectResolutions/python))
endif
ALL_COMMONRULES += src_TopQuarkAnalysis_TopObjectResolutions_python
src_TopQuarkAnalysis_TopObjectResolutions_python_INIT_FUNC += $$(eval $$(call CommonProductRules,src_TopQuarkAnalysis_TopObjectResolutions_python,src/TopQuarkAnalysis/TopObjectResolutions/python,PYTHON))
ALL_PACKAGES += $(patsubst src/%,%,src/TopQuarkAnalysis/TopSkimming)
subdirs_src_TopQuarkAnalysis_TopSkimming := src_TopQuarkAnalysis_TopSkimming_plugins src_TopQuarkAnalysis_TopSkimming_python src_TopQuarkAnalysis_TopSkimming_src src_TopQuarkAnalysis_TopSkimming_test
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
ifeq ($(strip $(PyTopQuarkAnalysisTopSkimming)),)
PyTopQuarkAnalysisTopSkimming := self/src/TopQuarkAnalysis/TopSkimming/python
PyTopQuarkAnalysisTopSkimming_files := $(patsubst src/TopQuarkAnalysis/TopSkimming/python/%,%,$(wildcard $(foreach dir,src/TopQuarkAnalysis/TopSkimming/python ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
PyTopQuarkAnalysisTopSkimming_LOC_USE := self
ALL_PYTHON_DIRS += $(patsubst src/%,%,src/TopQuarkAnalysis/TopSkimming/python)
ALL_PRODS += PyTopQuarkAnalysisTopSkimming
src_TopQuarkAnalysis_TopSkimming_python_parent := TopQuarkAnalysis/TopSkimming
PyTopQuarkAnalysisTopSkimming_INIT_FUNC        += $$(eval $$(call PythonProduct,PyTopQuarkAnalysisTopSkimming,src/TopQuarkAnalysis/TopSkimming/python,src_TopQuarkAnalysis_TopSkimming_python,1,1,$(SCRAMSTORENAME_PYTHON),$(SCRAMSTORENAME_LIB),,))
else
$(eval $(call MultipleWarningMsg,PyTopQuarkAnalysisTopSkimming,src/TopQuarkAnalysis/TopSkimming/python))
endif
ALL_COMMONRULES += src_TopQuarkAnalysis_TopSkimming_python
src_TopQuarkAnalysis_TopSkimming_python_INIT_FUNC += $$(eval $$(call CommonProductRules,src_TopQuarkAnalysis_TopSkimming_python,src/TopQuarkAnalysis/TopSkimming/python,PYTHON))
ALL_SUBSYSTEMS+=$(patsubst src/%,%,src/Muon)
subdirs_src_Muon = src_Muon_MuonAnalysisTools
ifeq ($(strip $(runtestTqafTopSkimming)),)
runtestTqafTopSkimming_files := $(patsubst src/TopQuarkAnalysis/TopSkimming/test/%,%,$(foreach file,runtestTqafTopSkimming.cpp,$(eval xfile:=$(wildcard src/TopQuarkAnalysis/TopSkimming/test/$(file)))$(if $(xfile),$(xfile),$(warning No such file exists: src/TopQuarkAnalysis/TopSkimming/test/$(file). Please fix src/TopQuarkAnalysis/TopSkimming/test/BuildFile.))))
runtestTqafTopSkimming := self/src/TopQuarkAnalysis/TopSkimming/test
runtestTqafTopSkimming_TEST_RUNNER_CMD :=  runtestTqafTopSkimming  /bin/bash TopQuarkAnalysis/TopSkimming/test runtests.sh
runtestTqafTopSkimming_BuildFile    := $(WORKINGDIR)/cache/bf/src/TopQuarkAnalysis/TopSkimming/test/BuildFile
runtestTqafTopSkimming_LOC_USE := self FWCore/Utilities
runtestTqafTopSkimming_PACKAGE := self/src/TopQuarkAnalysis/TopSkimming/test
ALL_PRODS += runtestTqafTopSkimming
runtestTqafTopSkimming_INIT_FUNC        += $$(eval $$(call Binary,runtestTqafTopSkimming,src/TopQuarkAnalysis/TopSkimming/test,src_TopQuarkAnalysis_TopSkimming_test,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_TEST),test,$(SCRAMSTORENAME_LOGS)))
else
$(eval $(call MultipleWarningMsg,runtestTqafTopSkimming,src/TopQuarkAnalysis/TopSkimming/test))
endif
ALL_COMMONRULES += src_TopQuarkAnalysis_TopSkimming_test
src_TopQuarkAnalysis_TopSkimming_test_parent := TopQuarkAnalysis/TopSkimming
src_TopQuarkAnalysis_TopSkimming_test_INIT_FUNC += $$(eval $$(call CommonProductRules,src_TopQuarkAnalysis_TopSkimming_test,src/TopQuarkAnalysis/TopSkimming/test,TEST))
ALL_PACKAGES += $(patsubst src/%,%,src/TopQuarkAnalysis/TopTools)
subdirs_src_TopQuarkAnalysis_TopTools := src_TopQuarkAnalysis_TopTools_doc src_TopQuarkAnalysis_TopTools_interface src_TopQuarkAnalysis_TopTools_plugins src_TopQuarkAnalysis_TopTools_python src_TopQuarkAnalysis_TopTools_src src_TopQuarkAnalysis_TopTools_test
ifeq ($(strip $(TopQuarkAnalysisTopToolsPlugins)),)
TopQuarkAnalysisTopToolsPlugins_files := $(patsubst src/TopQuarkAnalysis/TopTools/plugins/%,%,$(foreach file,*.cc,$(eval xfile:=$(wildcard src/TopQuarkAnalysis/TopTools/plugins/$(file)))$(if $(xfile),$(xfile),$(warning No such file exists: src/TopQuarkAnalysis/TopTools/plugins/$(file). Please fix src/TopQuarkAnalysis/TopTools/plugins/BuildFile.))))
TopQuarkAnalysisTopToolsPlugins := self/src/TopQuarkAnalysis/TopTools/plugins
TopQuarkAnalysisTopToolsPlugins_BuildFile    := $(WORKINGDIR)/cache/bf/src/TopQuarkAnalysis/TopTools/plugins/BuildFile
TopQuarkAnalysisTopToolsPlugins_LOC_USE := self AnalysisDataFormats/TopObjects DataFormats/PatCandidates DataFormats/VertexReco TopQuarkAnalysis/TopTools FWCore/ParameterSet FWCore/Framework HLTrigger/HLTcore boost root
TopQuarkAnalysisTopToolsPlugins_PRE_INIT_FUNC += $$(eval $$(call edmPlugin,TopQuarkAnalysisTopToolsPlugins,TopQuarkAnalysisTopToolsPlugins,$(SCRAMSTORENAME_LIB)))
TopQuarkAnalysisTopToolsPlugins_PACKAGE := self/src/TopQuarkAnalysis/TopTools/plugins
ALL_PRODS += TopQuarkAnalysisTopToolsPlugins
TopQuarkAnalysisTopToolsPlugins_INIT_FUNC        += $$(eval $$(call Library,TopQuarkAnalysisTopToolsPlugins,src/TopQuarkAnalysis/TopTools/plugins,src_TopQuarkAnalysis_TopTools_plugins,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS)))
else
$(eval $(call MultipleWarningMsg,TopQuarkAnalysisTopToolsPlugins,src/TopQuarkAnalysis/TopTools/plugins))
endif
ALL_COMMONRULES += src_TopQuarkAnalysis_TopTools_plugins
src_TopQuarkAnalysis_TopTools_plugins_parent := TopQuarkAnalysis/TopTools
src_TopQuarkAnalysis_TopTools_plugins_INIT_FUNC += $$(eval $$(call CommonProductRules,src_TopQuarkAnalysis_TopTools_plugins,src/TopQuarkAnalysis/TopTools/plugins,PLUGINS))
ifeq ($(strip $(PyTopQuarkAnalysisTopTools)),)
PyTopQuarkAnalysisTopTools := self/src/TopQuarkAnalysis/TopTools/python
PyTopQuarkAnalysisTopTools_files := $(patsubst src/TopQuarkAnalysis/TopTools/python/%,%,$(wildcard $(foreach dir,src/TopQuarkAnalysis/TopTools/python ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
PyTopQuarkAnalysisTopTools_LOC_USE := self
ALL_PYTHON_DIRS += $(patsubst src/%,%,src/TopQuarkAnalysis/TopTools/python)
ALL_PRODS += PyTopQuarkAnalysisTopTools
src_TopQuarkAnalysis_TopTools_python_parent := TopQuarkAnalysis/TopTools
PyTopQuarkAnalysisTopTools_INIT_FUNC        += $$(eval $$(call PythonProduct,PyTopQuarkAnalysisTopTools,src/TopQuarkAnalysis/TopTools/python,src_TopQuarkAnalysis_TopTools_python,1,1,$(SCRAMSTORENAME_PYTHON),$(SCRAMSTORENAME_LIB),,))
else
$(eval $(call MultipleWarningMsg,PyTopQuarkAnalysisTopTools,src/TopQuarkAnalysis/TopTools/python))
endif
ALL_COMMONRULES += src_TopQuarkAnalysis_TopTools_python
src_TopQuarkAnalysis_TopTools_python_INIT_FUNC += $$(eval $$(call CommonProductRules,src_TopQuarkAnalysis_TopTools_python,src/TopQuarkAnalysis/TopTools/python,PYTHON))
ifeq ($(strip $(runtestTqafTopTools)),)
runtestTqafTopTools_files := $(patsubst src/TopQuarkAnalysis/TopTools/test/%,%,$(foreach file,runtestTqafTopTools.cpp,$(eval xfile:=$(wildcard src/TopQuarkAnalysis/TopTools/test/$(file)))$(if $(xfile),$(xfile),$(warning No such file exists: src/TopQuarkAnalysis/TopTools/test/$(file). Please fix src/TopQuarkAnalysis/TopTools/test/BuildFile.))))
runtestTqafTopTools := self/src/TopQuarkAnalysis/TopTools/test
runtestTqafTopTools_TEST_RUNNER_CMD :=  runtestTqafTopTools  /bin/bash TopQuarkAnalysis/TopTools/test runtests.sh
runtestTqafTopTools_BuildFile    := $(WORKINGDIR)/cache/bf/src/TopQuarkAnalysis/TopTools/test/BuildFile
runtestTqafTopTools_LOC_USE := self FWCore/Utilities
runtestTqafTopTools_PACKAGE := self/src/TopQuarkAnalysis/TopTools/test
ALL_PRODS += runtestTqafTopTools
runtestTqafTopTools_INIT_FUNC        += $$(eval $$(call Binary,runtestTqafTopTools,src/TopQuarkAnalysis/TopTools/test,src_TopQuarkAnalysis_TopTools_test,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_TEST),test,$(SCRAMSTORENAME_LOGS)))
else
$(eval $(call MultipleWarningMsg,runtestTqafTopTools,src/TopQuarkAnalysis/TopTools/test))
endif
ALL_COMMONRULES += src_TopQuarkAnalysis_TopTools_test
src_TopQuarkAnalysis_TopTools_test_parent := TopQuarkAnalysis/TopTools
src_TopQuarkAnalysis_TopTools_test_INIT_FUNC += $$(eval $$(call CommonProductRules,src_TopQuarkAnalysis_TopTools_test,src/TopQuarkAnalysis/TopTools/test,TEST))
ALL_PACKAGES += $(patsubst src/%,%,src/BEAN/BEANmaker)
subdirs_src_BEAN_BEANmaker := src_BEAN_BEANmaker_data src_BEAN_BEANmaker_interface src_BEAN_BEANmaker_json src_BEAN_BEANmaker_plugins src_BEAN_BEANmaker_src src_BEAN_BEANmaker_test
ifeq ($(strip $(1)),)
1_files := $(patsubst src/BEAN/BEANmaker/plugins/%,%,$(foreach file,*.cc,$(eval xfile:=$(wildcard src/BEAN/BEANmaker/plugins/$(file)))$(if $(xfile),$(xfile),$(warning No such file exists: src/BEAN/BEANmaker/plugins/$(file). Please fix src/BEAN/BEANmaker/plugins/BuildFile.))))
1 := self/src/BEAN/BEANmaker/plugins
1_BuildFile    := $(WORKINGDIR)/cache/bf/src/BEAN/BEANmaker/plugins/BuildFile
1_LOC_USE := self BEAN/BEANmaker BEAN/Collections CMGTools/External CondFormats/DataRecord CondFormats/JetMETObjects CondFormats/L1TObjects DataFormats/BeamSpot DataFormats/Candidate DataFormats/Common DataFormats/EcalRecHit DataFormats/EgammaReco DataFormats/HLTReco DataFormats/HepMCCandidate DataFormats/JetReco DataFormats/L1GlobalMuonTrigger DataFormats/L1GlobalTrigger DataFormats/L1Trigger DataFormats/Luminosity DataFormats/METReco DataFormats/MuonReco DataFormats/PatCandidates DataFormats/RecoCandidate DataFormats/Scalers DataFormats/TrackReco DataFormats/VertexReco EGamma/EGammaAnalysisTools FWCore/Common FWCore/Framework FWCore/ParameterSet Geometry/Records Geometry/TrackerGeometryBuilder HLTrigger/HLTcore JetMETCorrections/Objects MagneticField/Engine MagneticField/Records Muon/MuonAnalysisTools PhysicsTools/SelectorUtils PhysicsTools/Utilities RecoEcal/EgammaCoreTools RecoEgamma/EgammaTools RecoLocalCalo/EcalRecAlgos RecoMuon/MuonIsolationProducers RecoTracker/TransientTrackingRecHit SimDataFormats/GeneratorProducts SimDataFormats/PileupSummaryInfo
1_PRE_INIT_FUNC += $$(eval $$(call edmPlugin,1,1,$(SCRAMSTORENAME_LIB)))
1_PACKAGE := self/src/BEAN/BEANmaker/plugins
ALL_PRODS += 1
1_INIT_FUNC        += $$(eval $$(call Library,1,src/BEAN/BEANmaker/plugins,src_BEAN_BEANmaker_plugins,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS)))
else
$(eval $(call MultipleWarningMsg,1,src/BEAN/BEANmaker/plugins))
endif
ALL_COMMONRULES += src_BEAN_BEANmaker_plugins
src_BEAN_BEANmaker_plugins_parent := BEAN/BEANmaker
src_BEAN_BEANmaker_plugins_INIT_FUNC += $$(eval $$(call CommonProductRules,src_BEAN_BEANmaker_plugins,src/BEAN/BEANmaker/plugins,PLUGINS))
ALL_COMMONRULES += src_BEAN_BEANmaker_test
src_BEAN_BEANmaker_test_parent := BEAN/BEANmaker
src_BEAN_BEANmaker_test_INIT_FUNC += $$(eval $$(call CommonProductRules,src_BEAN_BEANmaker_test,src/BEAN/BEANmaker/test,TEST))
ALL_PACKAGES += $(patsubst src/%,%,src/BEAN/Collections)
subdirs_src_BEAN_Collections := src_BEAN_Collections_src
ALL_PACKAGES += $(patsubst src/%,%,src/BEAN/Q2Weights)
subdirs_src_BEAN_Q2Weights := src_BEAN_Q2Weights_src
ALL_SUBSYSTEMS+=$(patsubst src/%,%,src/SusyAnalysis)
subdirs_src_SusyAnalysis = src_SusyAnalysis_EventSelector
ALL_PACKAGES += $(patsubst src/%,%,src/SusyAnalysis/EventSelector)
subdirs_src_SusyAnalysis_EventSelector := src_SusyAnalysis_EventSelector_interface
ALL_PACKAGES += $(patsubst src/%,%,src/Muon/MuonAnalysisTools)
subdirs_src_Muon_MuonAnalysisTools := src_Muon_MuonAnalysisTools_data src_Muon_MuonAnalysisTools_interface src_Muon_MuonAnalysisTools_src src_Muon_MuonAnalysisTools_test
ifeq ($(strip $(MuonMuonAnalysisToolsTest)),)
MuonMuonAnalysisToolsTest_files := $(patsubst src/Muon/MuonAnalysisTools/test/%,%,$(foreach file,*.cc,$(eval xfile:=$(wildcard src/Muon/MuonAnalysisTools/test/$(file)))$(if $(xfile),$(xfile),$(warning No such file exists: src/Muon/MuonAnalysisTools/test/$(file). Please fix src/Muon/MuonAnalysisTools/test/BuildFile.))))
MuonMuonAnalysisToolsTest := self/src/Muon/MuonAnalysisTools/test
MuonMuonAnalysisToolsTest_BuildFile    := $(WORKINGDIR)/cache/bf/src/Muon/MuonAnalysisTools/test/BuildFile
MuonMuonAnalysisToolsTest_LOC_USE := self DataFormats/Common DataFormats/EgammaReco DataFormats/GsfTrackReco DataFormats/ParticleFlowCandidate DataFormats/ParticleFlowReco FWCore/Framework FWCore/MessageLogger FWCore/ParameterSet RecoParticleFlow/PFProducer Muon/MuonAnalysisTools clhep root roottmva
MuonMuonAnalysisToolsTest_PRE_INIT_FUNC += $$(eval $$(call edmPlugin,MuonMuonAnalysisToolsTest,MuonMuonAnalysisToolsTest,$(SCRAMSTORENAME_LIB)))
MuonMuonAnalysisToolsTest_PACKAGE := self/src/Muon/MuonAnalysisTools/test
ALL_PRODS += MuonMuonAnalysisToolsTest
MuonMuonAnalysisToolsTest_INIT_FUNC        += $$(eval $$(call Library,MuonMuonAnalysisToolsTest,src/Muon/MuonAnalysisTools/test,src_Muon_MuonAnalysisTools_test,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS)))
else
$(eval $(call MultipleWarningMsg,MuonMuonAnalysisToolsTest,src/Muon/MuonAnalysisTools/test))
endif
ALL_COMMONRULES += src_Muon_MuonAnalysisTools_test
src_Muon_MuonAnalysisTools_test_parent := Muon/MuonAnalysisTools
src_Muon_MuonAnalysisTools_test_INIT_FUNC += $$(eval $$(call CommonProductRules,src_Muon_MuonAnalysisTools_test,src/Muon/MuonAnalysisTools/test,TEST))
ALL_SUBSYSTEMS+=$(patsubst src/%,%,src/CMGTools)
subdirs_src_CMGTools = src_CMGTools_External
ALL_PACKAGES += $(patsubst src/%,%,src/CMGTools/External)
subdirs_src_CMGTools_External := src_CMGTools_External_data src_CMGTools_External_interface src_CMGTools_External_plugins src_CMGTools_External_python src_CMGTools_External_src
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
ifeq ($(strip $(PyCMGToolsExternal)),)
PyCMGToolsExternal := self/src/CMGTools/External/python
PyCMGToolsExternal_files := $(patsubst src/CMGTools/External/python/%,%,$(wildcard $(foreach dir,src/CMGTools/External/python ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
PyCMGToolsExternal_LOC_USE := self
ALL_PYTHON_DIRS += $(patsubst src/%,%,src/CMGTools/External/python)
ALL_PRODS += PyCMGToolsExternal
src_CMGTools_External_python_parent := CMGTools/External
PyCMGToolsExternal_INIT_FUNC        += $$(eval $$(call PythonProduct,PyCMGToolsExternal,src/CMGTools/External/python,src_CMGTools_External_python,1,1,$(SCRAMSTORENAME_PYTHON),$(SCRAMSTORENAME_LIB),,))
else
$(eval $(call MultipleWarningMsg,PyCMGToolsExternal,src/CMGTools/External/python))
endif
ALL_COMMONRULES += src_CMGTools_External_python
src_CMGTools_External_python_INIT_FUNC += $$(eval $$(call CommonProductRules,src_CMGTools_External_python,src/CMGTools/External/python,PYTHON))
ALL_SUBSYSTEMS+=$(patsubst src/%,%,src/RecoJets)
subdirs_src_RecoJets = src_RecoJets_JetProducers
ALL_PACKAGES += $(patsubst src/%,%,src/RecoJets/JetProducers)
subdirs_src_RecoJets_JetProducers := src_RecoJets_JetProducers_data
ALL_SUBSYSTEMS+=$(patsubst src/%,%,src/CommonTools)
subdirs_src_CommonTools = src_CommonTools_ParticleFlow src_CommonTools_RecoUtils
ALL_PACKAGES += $(patsubst src/%,%,src/CommonTools/ParticleFlow)
subdirs_src_CommonTools_ParticleFlow := src_CommonTools_ParticleFlow_interface src_CommonTools_ParticleFlow_plugins src_CommonTools_ParticleFlow_python src_CommonTools_ParticleFlow_src src_CommonTools_ParticleFlow_test
ifeq ($(strip $(CommonToolsParticleFlow_plugins)),)
CommonToolsParticleFlow_plugins_files := $(patsubst src/CommonTools/ParticleFlow/plugins/%,%,$(foreach file,*.cc,$(eval xfile:=$(wildcard src/CommonTools/ParticleFlow/plugins/$(file)))$(if $(xfile),$(xfile),$(warning No such file exists: src/CommonTools/ParticleFlow/plugins/$(file). Please fix src/CommonTools/ParticleFlow/plugins/BuildFile.))))
CommonToolsParticleFlow_plugins := self/src/CommonTools/ParticleFlow/plugins
CommonToolsParticleFlow_plugins_BuildFile    := $(WORKINGDIR)/cache/bf/src/CommonTools/ParticleFlow/plugins/BuildFile
CommonToolsParticleFlow_plugins_LOC_USE := self DataFormats/ParticleFlowCandidate DataFormats/JetReco DataFormats/TauReco DataFormats/METReco DataFormats/TrackReco DataFormats/VertexReco PhysicsTools/IsolationAlgos FWCore/Framework FWCore/MessageLogger FWCore/ParameterSet JetMETCorrections/Objects CommonTools/Utils CommonTools/ParticleFlow
CommonToolsParticleFlow_plugins_PRE_INIT_FUNC += $$(eval $$(call edmPlugin,CommonToolsParticleFlow_plugins,CommonToolsParticleFlow_plugins,$(SCRAMSTORENAME_LIB)))
CommonToolsParticleFlow_plugins_PACKAGE := self/src/CommonTools/ParticleFlow/plugins
ALL_PRODS += CommonToolsParticleFlow_plugins
CommonToolsParticleFlow_plugins_INIT_FUNC        += $$(eval $$(call Library,CommonToolsParticleFlow_plugins,src/CommonTools/ParticleFlow/plugins,src_CommonTools_ParticleFlow_plugins,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS)))
else
$(eval $(call MultipleWarningMsg,CommonToolsParticleFlow_plugins,src/CommonTools/ParticleFlow/plugins))
endif
ALL_COMMONRULES += src_CommonTools_ParticleFlow_plugins
src_CommonTools_ParticleFlow_plugins_parent := CommonTools/ParticleFlow
src_CommonTools_ParticleFlow_plugins_INIT_FUNC += $$(eval $$(call CommonProductRules,src_CommonTools_ParticleFlow_plugins,src/CommonTools/ParticleFlow/plugins,PLUGINS))
ifeq ($(strip $(PyCommonToolsParticleFlow)),)
PyCommonToolsParticleFlow := self/src/CommonTools/ParticleFlow/python
PyCommonToolsParticleFlow_files := $(patsubst src/CommonTools/ParticleFlow/python/%,%,$(wildcard $(foreach dir,src/CommonTools/ParticleFlow/python ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
PyCommonToolsParticleFlow_LOC_USE := self
ALL_PYTHON_DIRS += $(patsubst src/%,%,src/CommonTools/ParticleFlow/python)
ALL_PRODS += PyCommonToolsParticleFlow
src_CommonTools_ParticleFlow_python_parent := CommonTools/ParticleFlow
PyCommonToolsParticleFlow_INIT_FUNC        += $$(eval $$(call PythonProduct,PyCommonToolsParticleFlow,src/CommonTools/ParticleFlow/python,src_CommonTools_ParticleFlow_python,1,1,$(SCRAMSTORENAME_PYTHON),$(SCRAMSTORENAME_LIB),,))
else
$(eval $(call MultipleWarningMsg,PyCommonToolsParticleFlow,src/CommonTools/ParticleFlow/python))
endif
ALL_COMMONRULES += src_CommonTools_ParticleFlow_python
src_CommonTools_ParticleFlow_python_INIT_FUNC += $$(eval $$(call CommonProductRules,src_CommonTools_ParticleFlow_python,src/CommonTools/ParticleFlow/python,PYTHON))
ifeq ($(strip $(CommonToolsParticleFlowTest)),)
CommonToolsParticleFlowTest_files := $(patsubst src/CommonTools/ParticleFlow/test/%,%,$(foreach file,PFIsoReaderDemo.cc,$(eval xfile:=$(wildcard src/CommonTools/ParticleFlow/test/$(file)))$(if $(xfile),$(xfile),$(warning No such file exists: src/CommonTools/ParticleFlow/test/$(file). Please fix src/CommonTools/ParticleFlow/test/BuildFile.))))
CommonToolsParticleFlowTest := self/src/CommonTools/ParticleFlow/test
CommonToolsParticleFlowTest_BuildFile    := $(WORKINGDIR)/cache/bf/src/CommonTools/ParticleFlow/test/BuildFile
CommonToolsParticleFlowTest_LOC_USE := self DataFormats/Common DataFormats/EgammaCandidates FWCore/Framework FWCore/MessageLogger FWCore/ParameterSet PhysicsTools/UtilAlgos
CommonToolsParticleFlowTest_PRE_INIT_FUNC += $$(eval $$(call edmPlugin,CommonToolsParticleFlowTest,CommonToolsParticleFlowTest,$(SCRAMSTORENAME_LIB)))
CommonToolsParticleFlowTest_PACKAGE := self/src/CommonTools/ParticleFlow/test
ALL_PRODS += CommonToolsParticleFlowTest
CommonToolsParticleFlowTest_INIT_FUNC        += $$(eval $$(call Library,CommonToolsParticleFlowTest,src/CommonTools/ParticleFlow/test,src_CommonTools_ParticleFlow_test,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS)))
else
$(eval $(call MultipleWarningMsg,CommonToolsParticleFlowTest,src/CommonTools/ParticleFlow/test))
endif
ALL_COMMONRULES += src_CommonTools_ParticleFlow_test
src_CommonTools_ParticleFlow_test_parent := CommonTools/ParticleFlow
src_CommonTools_ParticleFlow_test_INIT_FUNC += $$(eval $$(call CommonProductRules,src_CommonTools_ParticleFlow_test,src/CommonTools/ParticleFlow/test,TEST))
ALL_PACKAGES += $(patsubst src/%,%,src/CommonTools/RecoUtils)
subdirs_src_CommonTools_RecoUtils := src_CommonTools_RecoUtils_plugins src_CommonTools_RecoUtils_python src_CommonTools_RecoUtils_src src_CommonTools_RecoUtils_test
ALL_SUBSYSTEMS+=$(patsubst src/%,%,src/FWCore)
subdirs_src_FWCore = src_FWCore_GuiBrowsers
ifeq ($(strip $(PFPUAssoMapPlugins)),)
PFPUAssoMapPlugins_files := $(patsubst src/CommonTools/RecoUtils/plugins/%,%,$(foreach file,*.cc,$(eval xfile:=$(wildcard src/CommonTools/RecoUtils/plugins/$(file)))$(if $(xfile),$(xfile),$(warning No such file exists: src/CommonTools/RecoUtils/plugins/$(file). Please fix src/CommonTools/RecoUtils/plugins/BuildFile.))))
PFPUAssoMapPlugins := self/src/CommonTools/RecoUtils/plugins
PFPUAssoMapPlugins_BuildFile    := $(WORKINGDIR)/cache/bf/src/CommonTools/RecoUtils/plugins/BuildFile
PFPUAssoMapPlugins_LOC_USE := self FWCore/Framework FWCore/PluginManager FWCore/ParameterSet FWCore/ServiceRegistry CommonTools/UtilAlgos CommonTools/RecoUtils DataFormats/BeamSpot DataFormats/Common DataFormats/TrackReco DataFormats/VertexReco DataFormats/EgammaCandidates DataFormats/RecoCandidate DataFormats/ParticleFlowReco DQMServices/Core MagneticField/Records MagneticField/Engine SimDataFormats/TrackingAnalysis SimDataFormats/PileupSummaryInfo SimDataFormats/GeneratorProducts SimTracker/TrackAssociation SimTracker/Records TrackingTools/TransientTrack TrackingTools/IPTools
PFPUAssoMapPlugins_PRE_INIT_FUNC += $$(eval $$(call edmPlugin,PFPUAssoMapPlugins,PFPUAssoMapPlugins,$(SCRAMSTORENAME_LIB)))
PFPUAssoMapPlugins_PACKAGE := self/src/CommonTools/RecoUtils/plugins
ALL_PRODS += PFPUAssoMapPlugins
PFPUAssoMapPlugins_INIT_FUNC        += $$(eval $$(call Library,PFPUAssoMapPlugins,src/CommonTools/RecoUtils/plugins,src_CommonTools_RecoUtils_plugins,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS)))
else
$(eval $(call MultipleWarningMsg,PFPUAssoMapPlugins,src/CommonTools/RecoUtils/plugins))
endif
ALL_COMMONRULES += src_CommonTools_RecoUtils_plugins
src_CommonTools_RecoUtils_plugins_parent := CommonTools/RecoUtils
src_CommonTools_RecoUtils_plugins_INIT_FUNC += $$(eval $$(call CommonProductRules,src_CommonTools_RecoUtils_plugins,src/CommonTools/RecoUtils/plugins,PLUGINS))
ifeq ($(strip $(PyCommonToolsRecoUtils)),)
PyCommonToolsRecoUtils := self/src/CommonTools/RecoUtils/python
PyCommonToolsRecoUtils_files := $(patsubst src/CommonTools/RecoUtils/python/%,%,$(wildcard $(foreach dir,src/CommonTools/RecoUtils/python ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
PyCommonToolsRecoUtils_LOC_USE := self
ALL_PYTHON_DIRS += $(patsubst src/%,%,src/CommonTools/RecoUtils/python)
ALL_PRODS += PyCommonToolsRecoUtils
src_CommonTools_RecoUtils_python_parent := CommonTools/RecoUtils
PyCommonToolsRecoUtils_INIT_FUNC        += $$(eval $$(call PythonProduct,PyCommonToolsRecoUtils,src/CommonTools/RecoUtils/python,src_CommonTools_RecoUtils_python,1,1,$(SCRAMSTORENAME_PYTHON),$(SCRAMSTORENAME_LIB),,))
else
$(eval $(call MultipleWarningMsg,PyCommonToolsRecoUtils,src/CommonTools/RecoUtils/python))
endif
ALL_COMMONRULES += src_CommonTools_RecoUtils_python
src_CommonTools_RecoUtils_python_INIT_FUNC += $$(eval $$(call CommonProductRules,src_CommonTools_RecoUtils_python,src/CommonTools/RecoUtils/python,PYTHON))
ALL_COMMONRULES += src_CommonTools_RecoUtils_test
src_CommonTools_RecoUtils_test_parent := CommonTools/RecoUtils
src_CommonTools_RecoUtils_test_INIT_FUNC += $$(eval $$(call CommonProductRules,src_CommonTools_RecoUtils_test,src/CommonTools/RecoUtils/test,TEST))
ALL_SUBSYSTEMS+=$(patsubst src/%,%,src/CondFormats)
subdirs_src_CondFormats = src_CondFormats_EgammaObjects
ALL_PACKAGES += $(patsubst src/%,%,src/CondFormats/EgammaObjects)
subdirs_src_CondFormats_EgammaObjects := src_CondFormats_EgammaObjects_interface src_CondFormats_EgammaObjects_src
ALL_PACKAGES += $(patsubst src/%,%,src/DataFormats/StdDictionaries)
subdirs_src_DataFormats_StdDictionaries := src_DataFormats_StdDictionaries_doc src_DataFormats_StdDictionaries_src
ALL_PACKAGES += $(patsubst src/%,%,src/FWCore/GuiBrowsers)
subdirs_src_FWCore_GuiBrowsers := src_FWCore_GuiBrowsers_python src_FWCore_GuiBrowsers_scripts src_FWCore_GuiBrowsers_test
ifeq ($(strip $(PyFWCoreGuiBrowsers)),)
PyFWCoreGuiBrowsers := self/src/FWCore/GuiBrowsers/python
PyFWCoreGuiBrowsers_files := $(patsubst src/FWCore/GuiBrowsers/python/%,%,$(wildcard $(foreach dir,src/FWCore/GuiBrowsers/python ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
PyFWCoreGuiBrowsers_LOC_USE := self
ALL_PYTHON_DIRS += $(patsubst src/%,%,src/FWCore/GuiBrowsers/python)
ALL_PRODS += PyFWCoreGuiBrowsers
src_FWCore_GuiBrowsers_python_parent := FWCore/GuiBrowsers
PyFWCoreGuiBrowsers_INIT_FUNC        += $$(eval $$(call PythonProduct,PyFWCoreGuiBrowsers,src/FWCore/GuiBrowsers/python,src_FWCore_GuiBrowsers_python,1,1,$(SCRAMSTORENAME_PYTHON),$(SCRAMSTORENAME_LIB),,))
else
$(eval $(call MultipleWarningMsg,PyFWCoreGuiBrowsers,src/FWCore/GuiBrowsers/python))
endif
ALL_COMMONRULES += src_FWCore_GuiBrowsers_python
src_FWCore_GuiBrowsers_python_INIT_FUNC += $$(eval $$(call CommonProductRules,src_FWCore_GuiBrowsers_python,src/FWCore/GuiBrowsers/python,PYTHON))
src_FWCore_GuiBrowsers_scripts_files := $(filter-out \#% %\#,$(notdir $(wildcard $(foreach dir,$(LOCALTOP)/src/FWCore/GuiBrowsers/scripts,$(dir)/*))))
$(eval $(call Src2StoreCopy,src_FWCore_GuiBrowsers_scripts,src/FWCore/GuiBrowsers/scripts,$(SCRAMSTORENAME_BIN),*))
ALL_COMMONRULES += src_FWCore_GuiBrowsers_test
src_FWCore_GuiBrowsers_test_parent := FWCore/GuiBrowsers
src_FWCore_GuiBrowsers_test_INIT_FUNC += $$(eval $$(call CommonProductRules,src_FWCore_GuiBrowsers_test,src/FWCore/GuiBrowsers/test,TEST))
ALL_SUBSYSTEMS+=$(patsubst src/%,%,src/JetMETCorrections)
subdirs_src_JetMETCorrections = src_JetMETCorrections_Type1MET
ALL_PACKAGES += $(patsubst src/%,%,src/JetMETCorrections/Type1MET)
subdirs_src_JetMETCorrections_Type1MET := src_JetMETCorrections_Type1MET_data src_JetMETCorrections_Type1MET_doc src_JetMETCorrections_Type1MET_interface src_JetMETCorrections_Type1MET_plugins src_JetMETCorrections_Type1MET_python src_JetMETCorrections_Type1MET_src
ifeq ($(strip $(JetMETCorrectionsType1MET_plugins)),)
JetMETCorrectionsType1MET_plugins_files := $(patsubst src/JetMETCorrections/Type1MET/plugins/%,%,$(foreach file,*.cc,$(eval xfile:=$(wildcard src/JetMETCorrections/Type1MET/plugins/$(file)))$(if $(xfile),$(xfile),$(warning No such file exists: src/JetMETCorrections/Type1MET/plugins/$(file). Please fix src/JetMETCorrections/Type1MET/plugins/BuildFile.))))
JetMETCorrectionsType1MET_plugins := self/src/JetMETCorrections/Type1MET/plugins
JetMETCorrectionsType1MET_plugins_BuildFile    := $(WORKINGDIR)/cache/bf/src/JetMETCorrections/Type1MET/plugins/BuildFile
JetMETCorrectionsType1MET_plugins_LOC_USE := self FWCore/Framework FWCore/MessageLogger FWCore/ParameterSet FWCore/Utilities CommonTools/Utils DataFormats/Candidate DataFormats/JetReco DataFormats/METReco DataFormats/MuonReco DataFormats/ParticleFlowCandidate DataFormats/PatCandidates DataFormats/TauReco DataFormats/VertexReco JetMETCorrections/Objects JetMETCorrections/Type1MET
JetMETCorrectionsType1MET_plugins_PRE_INIT_FUNC += $$(eval $$(call edmPlugin,JetMETCorrectionsType1MET_plugins,JetMETCorrectionsType1MET_plugins,$(SCRAMSTORENAME_LIB)))
JetMETCorrectionsType1MET_plugins_PACKAGE := self/src/JetMETCorrections/Type1MET/plugins
ALL_PRODS += JetMETCorrectionsType1MET_plugins
JetMETCorrectionsType1MET_plugins_INIT_FUNC        += $$(eval $$(call Library,JetMETCorrectionsType1MET_plugins,src/JetMETCorrections/Type1MET/plugins,src_JetMETCorrections_Type1MET_plugins,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS)))
else
$(eval $(call MultipleWarningMsg,JetMETCorrectionsType1MET_plugins,src/JetMETCorrections/Type1MET/plugins))
endif
ALL_COMMONRULES += src_JetMETCorrections_Type1MET_plugins
src_JetMETCorrections_Type1MET_plugins_parent := JetMETCorrections/Type1MET
src_JetMETCorrections_Type1MET_plugins_INIT_FUNC += $$(eval $$(call CommonProductRules,src_JetMETCorrections_Type1MET_plugins,src/JetMETCorrections/Type1MET/plugins,PLUGINS))
ifeq ($(strip $(PyJetMETCorrectionsType1MET)),)
PyJetMETCorrectionsType1MET := self/src/JetMETCorrections/Type1MET/python
PyJetMETCorrectionsType1MET_files := $(patsubst src/JetMETCorrections/Type1MET/python/%,%,$(wildcard $(foreach dir,src/JetMETCorrections/Type1MET/python ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
PyJetMETCorrectionsType1MET_LOC_USE := self
ALL_PYTHON_DIRS += $(patsubst src/%,%,src/JetMETCorrections/Type1MET/python)
ALL_PRODS += PyJetMETCorrectionsType1MET
src_JetMETCorrections_Type1MET_python_parent := JetMETCorrections/Type1MET
PyJetMETCorrectionsType1MET_INIT_FUNC        += $$(eval $$(call PythonProduct,PyJetMETCorrectionsType1MET,src/JetMETCorrections/Type1MET/python,src_JetMETCorrections_Type1MET_python,1,1,$(SCRAMSTORENAME_PYTHON),$(SCRAMSTORENAME_LIB),,))
else
$(eval $(call MultipleWarningMsg,PyJetMETCorrectionsType1MET,src/JetMETCorrections/Type1MET/python))
endif
ALL_COMMONRULES += src_JetMETCorrections_Type1MET_python
src_JetMETCorrections_Type1MET_python_INIT_FUNC += $$(eval $$(call CommonProductRules,src_JetMETCorrections_Type1MET_python,src/JetMETCorrections/Type1MET/python,PYTHON))
ALL_PACKAGES += $(patsubst src/%,%,src/PhysicsTools/NtupleUtils)
subdirs_src_PhysicsTools_NtupleUtils := src_PhysicsTools_NtupleUtils_bin src_PhysicsTools_NtupleUtils_plugins src_PhysicsTools_NtupleUtils_python src_PhysicsTools_NtupleUtils_src src_PhysicsTools_NtupleUtils_test
ALL_COMMONRULES += src_PhysicsTools_NtupleUtils_bin
src_PhysicsTools_NtupleUtils_bin_parent := PhysicsTools/NtupleUtils
src_PhysicsTools_NtupleUtils_bin_INIT_FUNC += $$(eval $$(call CommonProductRules,src_PhysicsTools_NtupleUtils_bin,src/PhysicsTools/NtupleUtils/bin,BINARY))
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
ifeq ($(strip $(PyPhysicsToolsNtupleUtils)),)
PyPhysicsToolsNtupleUtils := self/src/PhysicsTools/NtupleUtils/python
PyPhysicsToolsNtupleUtils_files := $(patsubst src/PhysicsTools/NtupleUtils/python/%,%,$(wildcard $(foreach dir,src/PhysicsTools/NtupleUtils/python ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
PyPhysicsToolsNtupleUtils_LOC_USE := self
ALL_PYTHON_DIRS += $(patsubst src/%,%,src/PhysicsTools/NtupleUtils/python)
ALL_PRODS += PyPhysicsToolsNtupleUtils
src_PhysicsTools_NtupleUtils_python_parent := PhysicsTools/NtupleUtils
PyPhysicsToolsNtupleUtils_INIT_FUNC        += $$(eval $$(call PythonProduct,PyPhysicsToolsNtupleUtils,src/PhysicsTools/NtupleUtils/python,src_PhysicsTools_NtupleUtils_python,1,1,$(SCRAMSTORENAME_PYTHON),$(SCRAMSTORENAME_LIB),,))
else
$(eval $(call MultipleWarningMsg,PyPhysicsToolsNtupleUtils,src/PhysicsTools/NtupleUtils/python))
endif
ALL_COMMONRULES += src_PhysicsTools_NtupleUtils_python
src_PhysicsTools_NtupleUtils_python_INIT_FUNC += $$(eval $$(call CommonProductRules,src_PhysicsTools_NtupleUtils_python,src/PhysicsTools/NtupleUtils/python,PYTHON))
ALL_COMMONRULES += src_PhysicsTools_NtupleUtils_test
src_PhysicsTools_NtupleUtils_test_parent := PhysicsTools/NtupleUtils
src_PhysicsTools_NtupleUtils_test_INIT_FUNC += $$(eval $$(call CommonProductRules,src_PhysicsTools_NtupleUtils_test,src/PhysicsTools/NtupleUtils/test,TEST))
ALL_PACKAGES += $(patsubst src/%,%,src/PhysicsTools/PatUtils)
subdirs_src_PhysicsTools_PatUtils := src_PhysicsTools_PatUtils_data src_PhysicsTools_PatUtils_plugins src_PhysicsTools_PatUtils_python src_PhysicsTools_PatUtils_src
ifeq ($(strip $(PhysicsToolsPatUtils_plugins)),)
PhysicsToolsPatUtils_plugins_files := $(patsubst src/PhysicsTools/PatUtils/plugins/%,%,$(foreach file,*.cc,$(eval xfile:=$(wildcard src/PhysicsTools/PatUtils/plugins/$(file)))$(if $(xfile),$(xfile),$(warning No such file exists: src/PhysicsTools/PatUtils/plugins/$(file). Please fix src/PhysicsTools/PatUtils/plugins/BuildFile.))))
PhysicsToolsPatUtils_plugins := self/src/PhysicsTools/PatUtils/plugins
PhysicsToolsPatUtils_plugins_BuildFile    := $(WORKINGDIR)/cache/bf/src/PhysicsTools/PatUtils/plugins/BuildFile
PhysicsToolsPatUtils_plugins_LOC_USE := self FWCore/Framework FWCore/MessageLogger FWCore/ParameterSet FWCore/Utilities CommonTools/Utils CondFormats/JetMETObjects DataFormats/Candidate DataFormats/JetReco DataFormats/METReco DataFormats/MuonReco DataFormats/ParticleFlowCandidate DataFormats/PatCandidates JetMETCorrections/Objects JetMETCorrections/Type1MET RecoMET/METAlgorithms
PhysicsToolsPatUtils_plugins_PRE_INIT_FUNC += $$(eval $$(call edmPlugin,PhysicsToolsPatUtils_plugins,PhysicsToolsPatUtils_plugins,$(SCRAMSTORENAME_LIB)))
PhysicsToolsPatUtils_plugins_PACKAGE := self/src/PhysicsTools/PatUtils/plugins
ALL_PRODS += PhysicsToolsPatUtils_plugins
PhysicsToolsPatUtils_plugins_INIT_FUNC        += $$(eval $$(call Library,PhysicsToolsPatUtils_plugins,src/PhysicsTools/PatUtils/plugins,src_PhysicsTools_PatUtils_plugins,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS)))
else
$(eval $(call MultipleWarningMsg,PhysicsToolsPatUtils_plugins,src/PhysicsTools/PatUtils/plugins))
endif
ALL_COMMONRULES += src_PhysicsTools_PatUtils_plugins
src_PhysicsTools_PatUtils_plugins_parent := PhysicsTools/PatUtils
src_PhysicsTools_PatUtils_plugins_INIT_FUNC += $$(eval $$(call CommonProductRules,src_PhysicsTools_PatUtils_plugins,src/PhysicsTools/PatUtils/plugins,PLUGINS))
ifeq ($(strip $(PyPhysicsToolsPatUtils)),)
PyPhysicsToolsPatUtils := self/src/PhysicsTools/PatUtils/python
PyPhysicsToolsPatUtils_files := $(patsubst src/PhysicsTools/PatUtils/python/%,%,$(wildcard $(foreach dir,src/PhysicsTools/PatUtils/python ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
PyPhysicsToolsPatUtils_LOC_USE := self
ALL_PYTHON_DIRS += $(patsubst src/%,%,src/PhysicsTools/PatUtils/python)
ALL_PRODS += PyPhysicsToolsPatUtils
src_PhysicsTools_PatUtils_python_parent := PhysicsTools/PatUtils
PyPhysicsToolsPatUtils_INIT_FUNC        += $$(eval $$(call PythonProduct,PyPhysicsToolsPatUtils,src/PhysicsTools/PatUtils/python,src_PhysicsTools_PatUtils_python,1,1,$(SCRAMSTORENAME_PYTHON),$(SCRAMSTORENAME_LIB),,))
else
$(eval $(call MultipleWarningMsg,PyPhysicsToolsPatUtils,src/PhysicsTools/PatUtils/python))
endif
ALL_COMMONRULES += src_PhysicsTools_PatUtils_python
src_PhysicsTools_PatUtils_python_INIT_FUNC += $$(eval $$(call CommonProductRules,src_PhysicsTools_PatUtils_python,src/PhysicsTools/PatUtils/python,PYTHON))
ALL_SUBSYSTEMS+=$(patsubst src/%,%,src/RecoBTag)
subdirs_src_RecoBTag = src_RecoBTag_SecondaryVertex
ALL_PACKAGES += $(patsubst src/%,%,src/RecoBTag/SecondaryVertex)
subdirs_src_RecoBTag_SecondaryVertex := src_RecoBTag_SecondaryVertex_interface src_RecoBTag_SecondaryVertex_plugins src_RecoBTag_SecondaryVertex_python src_RecoBTag_SecondaryVertex_src
ifeq ($(strip $(RecoBTagSecondaryVertexESProducers)),)
RecoBTagSecondaryVertexESProducers_files := $(patsubst src/RecoBTag/SecondaryVertex/plugins/%,%,$(foreach file,JetTagESProducers.cc,$(eval xfile:=$(wildcard src/RecoBTag/SecondaryVertex/plugins/$(file)))$(if $(xfile),$(xfile),$(warning No such file exists: src/RecoBTag/SecondaryVertex/plugins/$(file). Please fix src/RecoBTag/SecondaryVertex/plugins/BuildFile.))))
RecoBTagSecondaryVertexESProducers := self/src/RecoBTag/SecondaryVertex/plugins
RecoBTagSecondaryVertexESProducers_BuildFile    := $(WORKINGDIR)/cache/bf/src/RecoBTag/SecondaryVertex/plugins/BuildFile
RecoBTagSecondaryVertexESProducers_LOC_USE := self FWCore/Framework FWCore/MessageLogger FWCore/ParameterSet FWCore/Utilities DataFormats/GeometryCommonDetAlgo DataFormats/TrackReco DataFormats/VertexReco DataFormats/BTauReco RecoBTag/SecondaryVertex boost RecoBTau/JetTagComputer
RecoBTagSecondaryVertexESProducers_PRE_INIT_FUNC += $$(eval $$(call edmPlugin,RecoBTagSecondaryVertexESProducers,RecoBTagSecondaryVertexESProducers,$(SCRAMSTORENAME_LIB)))
RecoBTagSecondaryVertexESProducers_PACKAGE := self/src/RecoBTag/SecondaryVertex/plugins
ALL_PRODS += RecoBTagSecondaryVertexESProducers
RecoBTagSecondaryVertexESProducers_INIT_FUNC        += $$(eval $$(call Library,RecoBTagSecondaryVertexESProducers,src/RecoBTag/SecondaryVertex/plugins,src_RecoBTag_SecondaryVertex_plugins,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS)))
else
$(eval $(call MultipleWarningMsg,RecoBTagSecondaryVertexESProducers,src/RecoBTag/SecondaryVertex/plugins))
endif
ifeq ($(strip $(RecoBTagSecondaryVertexProducer)),)
RecoBTagSecondaryVertexProducer_files := $(patsubst src/RecoBTag/SecondaryVertex/plugins/%,%,$(foreach file,SecondaryVertexProducer.cc,$(eval xfile:=$(wildcard src/RecoBTag/SecondaryVertex/plugins/$(file)))$(if $(xfile),$(xfile),$(warning No such file exists: src/RecoBTag/SecondaryVertex/plugins/$(file). Please fix src/RecoBTag/SecondaryVertex/plugins/BuildFile.))))
RecoBTagSecondaryVertexProducer := self/src/RecoBTag/SecondaryVertex/plugins
RecoBTagSecondaryVertexProducer_BuildFile    := $(WORKINGDIR)/cache/bf/src/RecoBTag/SecondaryVertex/plugins/BuildFile
RecoBTagSecondaryVertexProducer_LOC_USE := self FWCore/Framework FWCore/MessageLogger FWCore/ParameterSet FWCore/Utilities DataFormats/GeometryCommonDetAlgo DataFormats/TrackReco DataFormats/VertexReco DataFormats/BTauReco RecoBTag/SecondaryVertex boost DataFormats/BeamSpot TrackingTools/Records TrackingTools/TransientTrack RecoVertex/ConfigurableVertexReco RecoVertex/GhostTrackFitter
RecoBTagSecondaryVertexProducer_PRE_INIT_FUNC += $$(eval $$(call edmPlugin,RecoBTagSecondaryVertexProducer,RecoBTagSecondaryVertexProducer,$(SCRAMSTORENAME_LIB)))
RecoBTagSecondaryVertexProducer_PACKAGE := self/src/RecoBTag/SecondaryVertex/plugins
ALL_PRODS += RecoBTagSecondaryVertexProducer
RecoBTagSecondaryVertexProducer_INIT_FUNC        += $$(eval $$(call Library,RecoBTagSecondaryVertexProducer,src/RecoBTag/SecondaryVertex/plugins,src_RecoBTag_SecondaryVertex_plugins,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS)))
else
$(eval $(call MultipleWarningMsg,RecoBTagSecondaryVertexProducer,src/RecoBTag/SecondaryVertex/plugins))
endif
ALL_COMMONRULES += src_RecoBTag_SecondaryVertex_plugins
src_RecoBTag_SecondaryVertex_plugins_parent := RecoBTag/SecondaryVertex
src_RecoBTag_SecondaryVertex_plugins_INIT_FUNC += $$(eval $$(call CommonProductRules,src_RecoBTag_SecondaryVertex_plugins,src/RecoBTag/SecondaryVertex/plugins,PLUGINS))
ifeq ($(strip $(PyRecoBTagSecondaryVertex)),)
PyRecoBTagSecondaryVertex := self/src/RecoBTag/SecondaryVertex/python
PyRecoBTagSecondaryVertex_files := $(patsubst src/RecoBTag/SecondaryVertex/python/%,%,$(wildcard $(foreach dir,src/RecoBTag/SecondaryVertex/python ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
PyRecoBTagSecondaryVertex_LOC_USE := self
ALL_PYTHON_DIRS += $(patsubst src/%,%,src/RecoBTag/SecondaryVertex/python)
ALL_PRODS += PyRecoBTagSecondaryVertex
src_RecoBTag_SecondaryVertex_python_parent := RecoBTag/SecondaryVertex
PyRecoBTagSecondaryVertex_INIT_FUNC        += $$(eval $$(call PythonProduct,PyRecoBTagSecondaryVertex,src/RecoBTag/SecondaryVertex/python,src_RecoBTag_SecondaryVertex_python,1,1,$(SCRAMSTORENAME_PYTHON),$(SCRAMSTORENAME_LIB),,))
else
$(eval $(call MultipleWarningMsg,PyRecoBTagSecondaryVertex,src/RecoBTag/SecondaryVertex/python))
endif
ALL_COMMONRULES += src_RecoBTag_SecondaryVertex_python
src_RecoBTag_SecondaryVertex_python_INIT_FUNC += $$(eval $$(call CommonProductRules,src_RecoBTag_SecondaryVertex_python,src/RecoBTag/SecondaryVertex/python,PYTHON))
ALL_SUBSYSTEMS+=$(patsubst src/%,%,src/RecoTauTag)
subdirs_src_RecoTauTag = src_RecoTauTag_RecoTau src_RecoTauTag_Configuration
ALL_PACKAGES += $(patsubst src/%,%,src/RecoTauTag/Configuration)
subdirs_src_RecoTauTag_Configuration := src_RecoTauTag_Configuration_python
ifeq ($(strip $(PyRecoTauTagConfiguration)),)
PyRecoTauTagConfiguration := self/src/RecoTauTag/Configuration/python
PyRecoTauTagConfiguration_files := $(patsubst src/RecoTauTag/Configuration/python/%,%,$(wildcard $(foreach dir,src/RecoTauTag/Configuration/python ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
PyRecoTauTagConfiguration_LOC_USE := self
ALL_PYTHON_DIRS += $(patsubst src/%,%,src/RecoTauTag/Configuration/python)
ALL_PRODS += PyRecoTauTagConfiguration
src_RecoTauTag_Configuration_python_parent := RecoTauTag/Configuration
PyRecoTauTagConfiguration_INIT_FUNC        += $$(eval $$(call PythonProduct,PyRecoTauTagConfiguration,src/RecoTauTag/Configuration/python,src_RecoTauTag_Configuration_python,1,1,$(SCRAMSTORENAME_PYTHON),$(SCRAMSTORENAME_LIB),,))
else
$(eval $(call MultipleWarningMsg,PyRecoTauTagConfiguration,src/RecoTauTag/Configuration/python))
endif
ALL_COMMONRULES += src_RecoTauTag_Configuration_python
src_RecoTauTag_Configuration_python_INIT_FUNC += $$(eval $$(call CommonProductRules,src_RecoTauTag_Configuration_python,src/RecoTauTag/Configuration/python,PYTHON))
ALL_PACKAGES += $(patsubst src/%,%,src/RecoTauTag/RecoTau)
subdirs_src_RecoTauTag_RecoTau := src_RecoTauTag_RecoTau_data src_RecoTauTag_RecoTau_interface src_RecoTauTag_RecoTau_plugins src_RecoTauTag_RecoTau_python src_RecoTauTag_RecoTau_src src_RecoTauTag_RecoTau_test
ifeq ($(strip $(RecoTauTagRecoTauPlugins)),)
RecoTauTagRecoTauPlugins_files := $(patsubst src/RecoTauTag/RecoTau/plugins/%,%,$(foreach file,*.cc,$(eval xfile:=$(wildcard src/RecoTauTag/RecoTau/plugins/$(file)))$(if $(xfile),$(xfile),$(warning No such file exists: src/RecoTauTag/RecoTau/plugins/$(file). Please fix src/RecoTauTag/RecoTau/plugins/BuildFile.))))
RecoTauTagRecoTauPlugins := self/src/RecoTauTag/RecoTau/plugins
RecoTauTagRecoTauPlugins_BuildFile    := $(WORKINGDIR)/cache/bf/src/RecoTauTag/RecoTau/plugins/BuildFile
RecoTauTagRecoTauPlugins_LOC_USE := self TrackingTools/Records RecoVertex/KalmanVertexFit CommonTools/CandUtils DataFormats/Candidate DataFormats/MuonReco TrackingTools/TransientTrack RecoVertex/VertexPrimitives PhysicsTools/IsolationUtils PhysicsTools/MVAComputer PhysicsTools/MVATrainer FWCore/Framework FWCore/ParameterSet FWCore/MessageLogger FWCore/Utilities DataFormats/TauReco DataFormats/WrappedStdDictionaries CommonTools/UtilAlgos CommonTools/CandAlgos PhysicsTools/HepMCCandAlgos RecoTauTag/TauTagTools RecoTauTag/RecoTau DataFormats/JetReco DataFormats/ParticleFlowReco RecoBTag/SecondaryVertex DataFormats/VertexReco CondFormats/EgammaObjects CondFormats/DataRecord CondFormats/EcalObjects Geometry/CaloGeometry Geometry/CaloTopology Geometry/Records root
RecoTauTagRecoTauPlugins_PRE_INIT_FUNC += $$(eval $$(call edmPlugin,RecoTauTagRecoTauPlugins,RecoTauTagRecoTauPlugins,$(SCRAMSTORENAME_LIB)))
RecoTauTagRecoTauPlugins_PACKAGE := self/src/RecoTauTag/RecoTau/plugins
ALL_PRODS += RecoTauTagRecoTauPlugins
RecoTauTagRecoTauPlugins_INIT_FUNC        += $$(eval $$(call Library,RecoTauTagRecoTauPlugins,src/RecoTauTag/RecoTau/plugins,src_RecoTauTag_RecoTau_plugins,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS)))
else
$(eval $(call MultipleWarningMsg,RecoTauTagRecoTauPlugins,src/RecoTauTag/RecoTau/plugins))
endif
ALL_COMMONRULES += src_RecoTauTag_RecoTau_plugins
src_RecoTauTag_RecoTau_plugins_parent := RecoTauTag/RecoTau
src_RecoTauTag_RecoTau_plugins_INIT_FUNC += $$(eval $$(call CommonProductRules,src_RecoTauTag_RecoTau_plugins,src/RecoTauTag/RecoTau/plugins,PLUGINS))
ifeq ($(strip $(PyRecoTauTagRecoTau)),)
PyRecoTauTagRecoTau := self/src/RecoTauTag/RecoTau/python
PyRecoTauTagRecoTau_files := $(patsubst src/RecoTauTag/RecoTau/python/%,%,$(wildcard $(foreach dir,src/RecoTauTag/RecoTau/python ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
PyRecoTauTagRecoTau_LOC_USE := self
ALL_PYTHON_DIRS += $(patsubst src/%,%,src/RecoTauTag/RecoTau/python)
ALL_PRODS += PyRecoTauTagRecoTau
src_RecoTauTag_RecoTau_python_parent := RecoTauTag/RecoTau
PyRecoTauTagRecoTau_INIT_FUNC        += $$(eval $$(call PythonProduct,PyRecoTauTagRecoTau,src/RecoTauTag/RecoTau/python,src_RecoTauTag_RecoTau_python,1,1,$(SCRAMSTORENAME_PYTHON),$(SCRAMSTORENAME_LIB),,))
else
$(eval $(call MultipleWarningMsg,PyRecoTauTagRecoTau,src/RecoTauTag/RecoTau/python))
endif
ALL_COMMONRULES += src_RecoTauTag_RecoTau_python
src_RecoTauTag_RecoTau_python_INIT_FUNC += $$(eval $$(call CommonProductRules,src_RecoTauTag_RecoTau_python,src/RecoTauTag/RecoTau/python,PYTHON))
ifeq ($(strip $(TestRecoTauTagCombinatoricGenerator)),)
TestRecoTauTagCombinatoricGenerator_files := $(patsubst src/RecoTauTag/RecoTau/test/%,%,$(foreach file,CombinatoricGenerator_t.cppunit.cc,$(eval xfile:=$(wildcard src/RecoTauTag/RecoTau/test/$(file)))$(if $(xfile),$(xfile),$(warning No such file exists: src/RecoTauTag/RecoTau/test/$(file). Please fix src/RecoTauTag/RecoTau/test/BuildFile.))))
TestRecoTauTagCombinatoricGenerator := self/src/RecoTauTag/RecoTau/test
TestRecoTauTagCombinatoricGenerator_TEST_RUNNER_CMD :=  TestRecoTauTagCombinatoricGenerator 
TestRecoTauTagCombinatoricGenerator_BuildFile    := $(WORKINGDIR)/cache/bf/src/RecoTauTag/RecoTau/test/BuildFile
TestRecoTauTagCombinatoricGenerator_LOC_USE := self RecoTauTag/RecoTau cppunit
TestRecoTauTagCombinatoricGenerator_PACKAGE := self/src/RecoTauTag/RecoTau/test
ALL_PRODS += TestRecoTauTagCombinatoricGenerator
TestRecoTauTagCombinatoricGenerator_INIT_FUNC        += $$(eval $$(call Binary,TestRecoTauTagCombinatoricGenerator,src/RecoTauTag/RecoTau/test,src_RecoTauTag_RecoTau_test,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_TEST),test,$(SCRAMSTORENAME_LOGS)))
else
$(eval $(call MultipleWarningMsg,TestRecoTauTagCombinatoricGenerator,src/RecoTauTag/RecoTau/test))
endif
ALL_COMMONRULES += src_RecoTauTag_RecoTau_test
src_RecoTauTag_RecoTau_test_parent := RecoTauTag/RecoTau
src_RecoTauTag_RecoTau_test_INIT_FUNC += $$(eval $$(call CommonProductRules,src_RecoTauTag_RecoTau_test,src/RecoTauTag/RecoTau/test,TEST))
ALL_SUBSYSTEMS+=$(patsubst src/%,%,src/RecoVertex)
subdirs_src_RecoVertex = src_RecoVertex_AdaptiveVertexFinder
ALL_PACKAGES += $(patsubst src/%,%,src/RecoVertex/AdaptiveVertexFinder)
subdirs_src_RecoVertex_AdaptiveVertexFinder := src_RecoVertex_AdaptiveVertexFinder_interface src_RecoVertex_AdaptiveVertexFinder_plugins src_RecoVertex_AdaptiveVertexFinder_python src_RecoVertex_AdaptiveVertexFinder_src src_RecoVertex_AdaptiveVertexFinder_test
ifeq ($(strip $(RecoVertexAdaptiveVertexFinderPlugins)),)
RecoVertexAdaptiveVertexFinderPlugins_files := $(patsubst src/RecoVertex/AdaptiveVertexFinder/plugins/%,%,$(foreach file,*.cc,$(eval xfile:=$(wildcard src/RecoVertex/AdaptiveVertexFinder/plugins/$(file)))$(if $(xfile),$(xfile),$(warning No such file exists: src/RecoVertex/AdaptiveVertexFinder/plugins/$(file). Please fix src/RecoVertex/AdaptiveVertexFinder/plugins/BuildFile.))))
RecoVertexAdaptiveVertexFinderPlugins := self/src/RecoVertex/AdaptiveVertexFinder/plugins
RecoVertexAdaptiveVertexFinderPlugins_BuildFile    := $(WORKINGDIR)/cache/bf/src/RecoVertex/AdaptiveVertexFinder/plugins/BuildFile
RecoVertexAdaptiveVertexFinderPlugins_LOC_USE := self FWCore/Framework DataFormats/Common DataFormats/VertexReco DataFormats/JetReco DataFormats/BTauReco DataFormats/BeamSpot RecoVertex/ConfigurableVertexReco RecoBTag/SecondaryVertex TrackingTools/Records TrackingTools/TransientTrack TrackingTools/IPTools FWCore/Utilities
RecoVertexAdaptiveVertexFinderPlugins_PRE_INIT_FUNC += $$(eval $$(call edmPlugin,RecoVertexAdaptiveVertexFinderPlugins,RecoVertexAdaptiveVertexFinderPlugins,$(SCRAMSTORENAME_LIB)))
RecoVertexAdaptiveVertexFinderPlugins_PACKAGE := self/src/RecoVertex/AdaptiveVertexFinder/plugins
ALL_PRODS += RecoVertexAdaptiveVertexFinderPlugins
RecoVertexAdaptiveVertexFinderPlugins_INIT_FUNC        += $$(eval $$(call Library,RecoVertexAdaptiveVertexFinderPlugins,src/RecoVertex/AdaptiveVertexFinder/plugins,src_RecoVertex_AdaptiveVertexFinder_plugins,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS)))
else
$(eval $(call MultipleWarningMsg,RecoVertexAdaptiveVertexFinderPlugins,src/RecoVertex/AdaptiveVertexFinder/plugins))
endif
ALL_COMMONRULES += src_RecoVertex_AdaptiveVertexFinder_plugins
src_RecoVertex_AdaptiveVertexFinder_plugins_parent := RecoVertex/AdaptiveVertexFinder
src_RecoVertex_AdaptiveVertexFinder_plugins_INIT_FUNC += $$(eval $$(call CommonProductRules,src_RecoVertex_AdaptiveVertexFinder_plugins,src/RecoVertex/AdaptiveVertexFinder/plugins,PLUGINS))
ifeq ($(strip $(PyRecoVertexAdaptiveVertexFinder)),)
PyRecoVertexAdaptiveVertexFinder := self/src/RecoVertex/AdaptiveVertexFinder/python
PyRecoVertexAdaptiveVertexFinder_files := $(patsubst src/RecoVertex/AdaptiveVertexFinder/python/%,%,$(wildcard $(foreach dir,src/RecoVertex/AdaptiveVertexFinder/python ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
PyRecoVertexAdaptiveVertexFinder_LOC_USE := self
ALL_PYTHON_DIRS += $(patsubst src/%,%,src/RecoVertex/AdaptiveVertexFinder/python)
ALL_PRODS += PyRecoVertexAdaptiveVertexFinder
src_RecoVertex_AdaptiveVertexFinder_python_parent := RecoVertex/AdaptiveVertexFinder
PyRecoVertexAdaptiveVertexFinder_INIT_FUNC        += $$(eval $$(call PythonProduct,PyRecoVertexAdaptiveVertexFinder,src/RecoVertex/AdaptiveVertexFinder/python,src_RecoVertex_AdaptiveVertexFinder_python,1,1,$(SCRAMSTORENAME_PYTHON),$(SCRAMSTORENAME_LIB),,))
else
$(eval $(call MultipleWarningMsg,PyRecoVertexAdaptiveVertexFinder,src/RecoVertex/AdaptiveVertexFinder/python))
endif
ALL_COMMONRULES += src_RecoVertex_AdaptiveVertexFinder_python
src_RecoVertex_AdaptiveVertexFinder_python_INIT_FUNC += $$(eval $$(call CommonProductRules,src_RecoVertex_AdaptiveVertexFinder_python,src/RecoVertex/AdaptiveVertexFinder/python,PYTHON))
ALL_COMMONRULES += src_RecoVertex_AdaptiveVertexFinder_test
src_RecoVertex_AdaptiveVertexFinder_test_parent := RecoVertex/AdaptiveVertexFinder
src_RecoVertex_AdaptiveVertexFinder_test_INIT_FUNC += $$(eval $$(call CommonProductRules,src_RecoVertex_AdaptiveVertexFinder_test,src/RecoVertex/AdaptiveVertexFinder/test,TEST))
