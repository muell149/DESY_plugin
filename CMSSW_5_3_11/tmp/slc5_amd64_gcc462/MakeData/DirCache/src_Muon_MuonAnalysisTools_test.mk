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
