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
