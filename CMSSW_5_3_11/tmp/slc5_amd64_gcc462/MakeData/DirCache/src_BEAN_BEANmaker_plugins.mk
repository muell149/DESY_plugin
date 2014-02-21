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
