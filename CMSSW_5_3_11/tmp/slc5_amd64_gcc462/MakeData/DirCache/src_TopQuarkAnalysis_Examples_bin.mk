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
