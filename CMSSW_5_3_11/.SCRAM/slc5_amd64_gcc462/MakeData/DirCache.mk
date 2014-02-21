ifeq ($(strip $(TopAnalysis/HiggsUtils)),)
ALL_COMMONRULES += src_TopAnalysis_HiggsUtils_src
src_TopAnalysis_HiggsUtils_src_parent := TopAnalysis/HiggsUtils
src_TopAnalysis_HiggsUtils_src_INIT_FUNC := $$(eval $$(call CommonProductRules,src_TopAnalysis_HiggsUtils_src,src/TopAnalysis/HiggsUtils/src,LIBRARY))
TopAnalysisHiggsUtils := self/TopAnalysis/HiggsUtils
TopAnalysis/HiggsUtils := TopAnalysisHiggsUtils
TopAnalysisHiggsUtils_files := $(patsubst src/TopAnalysis/HiggsUtils/src/%,%,$(wildcard $(foreach dir,src/TopAnalysis/HiggsUtils/src ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
TopAnalysisHiggsUtils_BuildFile    := $(WORKINGDIR)/cache/bf/src/TopAnalysis/HiggsUtils/BuildFile
TopAnalysisHiggsUtils_LOC_USE := self FWCore/Framework FWCore/PluginManager FWCore/ParameterSet FWCore/MessageLogger FWCore/Utilities DataFormats/Common DataFormats/HepMCCandidate DataFormats/PatCandidates DataFormats/ParticleFlowCandidate DataFormats/Math root
TopAnalysisHiggsUtils_PRE_INIT_FUNC += $$(eval $$(call edmPlugin,TopAnalysisHiggsUtilsCapabilities,TopAnalysisHiggsUtils,$(SCRAMSTORENAME_LIB)))
TopAnalysisHiggsUtils_PRE_INIT_FUNC += $$(eval $$(call LCGDict,TopAnalysisHiggsUtils,0,src/TopAnalysis/HiggsUtils/src/classes.h,src/TopAnalysis/HiggsUtils/src/classes_def.xml,$(SCRAMSTORENAME_LIB),$(GENREFLEX_ARGS) --fail_on_warnings,Capabilities))
TopAnalysisHiggsUtils_EX_LIB   := TopAnalysisHiggsUtils
TopAnalysisHiggsUtils_EX_USE   := $(foreach d,$(TopAnalysisHiggsUtils_LOC_USE),$(if $($(d)_LOC_FLAGS_NO_RECURSIVE_EXPORT),,$d))
TopAnalysisHiggsUtils_PACKAGE := self/src/TopAnalysis/HiggsUtils/src
ALL_PRODS += TopAnalysisHiggsUtils
TopAnalysisHiggsUtils_INIT_FUNC        += $$(eval $$(call Library,TopAnalysisHiggsUtils,src/TopAnalysis/HiggsUtils/src,src_TopAnalysis_HiggsUtils_src,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS)))
endif
ifeq ($(strip $(TopAnalysis/TopAnalyzer)),)
ALL_COMMONRULES += src_TopAnalysis_TopAnalyzer_src
src_TopAnalysis_TopAnalyzer_src_parent := TopAnalysis/TopAnalyzer
src_TopAnalysis_TopAnalyzer_src_INIT_FUNC := $$(eval $$(call CommonProductRules,src_TopAnalysis_TopAnalyzer_src,src/TopAnalysis/TopAnalyzer/src,LIBRARY))
TopAnalysisTopAnalyzer := self/TopAnalysis/TopAnalyzer
TopAnalysis/TopAnalyzer := TopAnalysisTopAnalyzer
TopAnalysisTopAnalyzer_files := $(patsubst src/TopAnalysis/TopAnalyzer/src/%,%,$(wildcard $(foreach dir,src/TopAnalysis/TopAnalyzer/src ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
TopAnalysisTopAnalyzer_BuildFile    := $(WORKINGDIR)/cache/bf/src/TopAnalysis/TopAnalyzer/BuildFile
TopAnalysisTopAnalyzer_LOC_USE := self DataFormats/FWLite FWCore/Utilities FWCore/ParameterSet FWCore/MessageLogger FWCore/ServiceRegistry CommonTools/UtilAlgos PhysicsTools/PatUtils PhysicsTools/CandUtils PhysicsTools/KinFitter PhysicsTools/Utilities DataFormats/JetReco DataFormats/MuonReco DataFormats/EgammaReco DataFormats/CaloTowers DataFormats/EgammaCandidates DataFormats/PatCandidates DataFormats/Math TopAnalysis/TopUtils AnalysisDataFormats/TopObjects TopQuarkAnalysis/TopKinFitter TopQuarkAnalysis/TopEventSelection lhapdffull RecoBTag/Records RecoBTag/PerformanceDB CondFormats/PhysicsToolsObjects
TopAnalysisTopAnalyzer_EX_LIB   := TopAnalysisTopAnalyzer
TopAnalysisTopAnalyzer_EX_USE   := $(foreach d,$(TopAnalysisTopAnalyzer_LOC_USE),$(if $($(d)_LOC_FLAGS_NO_RECURSIVE_EXPORT),,$d))
TopAnalysisTopAnalyzer_PACKAGE := self/src/TopAnalysis/TopAnalyzer/src
ALL_PRODS += TopAnalysisTopAnalyzer
TopAnalysisTopAnalyzer_INIT_FUNC        += $$(eval $$(call Library,TopAnalysisTopAnalyzer,src/TopAnalysis/TopAnalyzer/src,src_TopAnalysis_TopAnalyzer_src,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS)))
endif
ifeq ($(strip $(TopAnalysis/TopFilter)),)
src_TopAnalysis_TopFilter := self/TopAnalysis/TopFilter
TopAnalysis/TopFilter  := src_TopAnalysis_TopFilter
src_TopAnalysis_TopFilter_BuildFile    := $(WORKINGDIR)/cache/bf/src/TopAnalysis/TopFilter/BuildFile
src_TopAnalysis_TopFilter_EX_USE := FWCore/MessageLogger AnalysisDataFormats/TopObjects FWCore/Framework self TopAnalysis/TopUtils DataFormats/PatCandidates FWCore/Utilities FWCore/ParameterSet
ALL_EXTERNAL_PRODS += src_TopAnalysis_TopFilter
src_TopAnalysis_TopFilter_INIT_FUNC += $$(eval $$(call EmptyPackage,src_TopAnalysis_TopFilter,src/TopAnalysis/TopFilter))
endif

ifeq ($(strip $(TopAnalysis/TopUtils)),)
ALL_COMMONRULES += src_TopAnalysis_TopUtils_src
src_TopAnalysis_TopUtils_src_parent := TopAnalysis/TopUtils
src_TopAnalysis_TopUtils_src_INIT_FUNC := $$(eval $$(call CommonProductRules,src_TopAnalysis_TopUtils_src,src/TopAnalysis/TopUtils/src,LIBRARY))
TopAnalysisTopUtils := self/TopAnalysis/TopUtils
TopAnalysis/TopUtils := TopAnalysisTopUtils
TopAnalysisTopUtils_files := $(patsubst src/TopAnalysis/TopUtils/src/%,%,$(wildcard $(foreach dir,src/TopAnalysis/TopUtils/src ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
TopAnalysisTopUtils_BuildFile    := $(WORKINGDIR)/cache/bf/src/TopAnalysis/TopUtils/BuildFile
TopAnalysisTopUtils_LOC_USE := self root rootgpad FWCore/MessageLogger PhysicsTools/CandUtils PhysicsTools/PatAlgos DataFormats/PatCandidates CondFormats/JetMETObjects SimGeneral/HepPDTRecord RecoBTag/PerformanceDB RecoBTag/Records AnalysisDataFormats/TopObjects
TopAnalysisTopUtils_PRE_INIT_FUNC += $$(eval $$(call edmPlugin,TopAnalysisTopUtilsCapabilities,TopAnalysisTopUtils,$(SCRAMSTORENAME_LIB)))
TopAnalysisTopUtils_PRE_INIT_FUNC += $$(eval $$(call LCGDict,TopAnalysisTopUtils,0,src/TopAnalysis/TopUtils/src/classes.h,src/TopAnalysis/TopUtils/src/classes_def.xml,$(SCRAMSTORENAME_LIB),$(GENREFLEX_ARGS) --fail_on_warnings,Capabilities))
TopAnalysisTopUtils_EX_LIB   := TopAnalysisTopUtils
TopAnalysisTopUtils_EX_USE   := $(foreach d,$(TopAnalysisTopUtils_LOC_USE),$(if $($(d)_LOC_FLAGS_NO_RECURSIVE_EXPORT),,$d))
TopAnalysisTopUtils_PACKAGE := self/src/TopAnalysis/TopUtils/src
ALL_PRODS += TopAnalysisTopUtils
TopAnalysisTopUtils_INIT_FUNC        += $$(eval $$(call Library,TopAnalysisTopUtils,src/TopAnalysis/TopUtils/src,src_TopAnalysis_TopUtils_src,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS)))
endif
ifeq ($(strip $(TopAnalysis/ZTopUtils)),)
ALL_COMMONRULES += src_TopAnalysis_ZTopUtils_src
src_TopAnalysis_ZTopUtils_src_parent := TopAnalysis/ZTopUtils
src_TopAnalysis_ZTopUtils_src_INIT_FUNC := $$(eval $$(call CommonProductRules,src_TopAnalysis_ZTopUtils_src,src/TopAnalysis/ZTopUtils/src,LIBRARY))
TopAnalysisZTopUtils := self/TopAnalysis/ZTopUtils
TopAnalysis/ZTopUtils := TopAnalysisZTopUtils
TopAnalysisZTopUtils_files := $(patsubst src/TopAnalysis/ZTopUtils/src/%,%,$(wildcard $(foreach dir,src/TopAnalysis/ZTopUtils/src ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
TopAnalysisZTopUtils_BuildFile    := $(WORKINGDIR)/cache/bf/src/TopAnalysis/ZTopUtils/BuildFile
TopAnalysisZTopUtils_LOC_USE := self root rootrflx rootgraphics rootmathcore FWCore/Framework FWCore/Utilities FWCore/FWLite DataFormats/FWLite DataFormats/Common DataFormats/Math
TopAnalysisZTopUtils_PRE_INIT_FUNC += $$(eval $$(call edmPlugin,TopAnalysisZTopUtilsCapabilities,TopAnalysisZTopUtils,$(SCRAMSTORENAME_LIB)))
TopAnalysisZTopUtils_PRE_INIT_FUNC += $$(eval $$(call LCGDict,TopAnalysisZTopUtils,0,src/TopAnalysis/ZTopUtils/src/classes.h,src/TopAnalysis/ZTopUtils/src/classes_def.xml,$(SCRAMSTORENAME_LIB),$(GENREFLEX_ARGS) --fail_on_warnings,Capabilities))
TopAnalysisZTopUtils_EX_LIB   := TopAnalysisZTopUtils
TopAnalysisZTopUtils_EX_USE   := $(foreach d,$(TopAnalysisZTopUtils_LOC_USE),$(if $($(d)_LOC_FLAGS_NO_RECURSIVE_EXPORT),,$d))
TopAnalysisZTopUtils_PACKAGE := self/src/TopAnalysis/ZTopUtils/src
ALL_PRODS += TopAnalysisZTopUtils
TopAnalysisZTopUtils_INIT_FUNC        += $$(eval $$(call Library,TopAnalysisZTopUtils,src/TopAnalysis/ZTopUtils/src,src_TopAnalysis_ZTopUtils_src,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS)))
endif
ifeq ($(strip $(AnalysisDataFormats/TopObjects)),)
ALL_COMMONRULES += src_AnalysisDataFormats_TopObjects_src
src_AnalysisDataFormats_TopObjects_src_parent := AnalysisDataFormats/TopObjects
src_AnalysisDataFormats_TopObjects_src_INIT_FUNC := $$(eval $$(call CommonProductRules,src_AnalysisDataFormats_TopObjects_src,src/AnalysisDataFormats/TopObjects/src,LIBRARY))
AnalysisDataFormatsTopObjects := self/AnalysisDataFormats/TopObjects
AnalysisDataFormats/TopObjects := AnalysisDataFormatsTopObjects
AnalysisDataFormatsTopObjects_files := $(patsubst src/AnalysisDataFormats/TopObjects/src/%,%,$(wildcard $(foreach dir,src/AnalysisDataFormats/TopObjects/src ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
AnalysisDataFormatsTopObjects_BuildFile    := $(WORKINGDIR)/cache/bf/src/AnalysisDataFormats/TopObjects/BuildFile
AnalysisDataFormatsTopObjects_LOC_USE := self FWCore/Utilities DataFormats/Common DataFormats/TauReco DataFormats/JetReco DataFormats/METReco DataFormats/MuonReco DataFormats/TrackReco DataFormats/PatCandidates DataFormats/HepMCCandidate DataFormats/EgammaCandidates CommonTools/CandUtils root
AnalysisDataFormatsTopObjects_PRE_INIT_FUNC += $$(eval $$(call edmPlugin,AnalysisDataFormatsTopObjectsCapabilities,AnalysisDataFormatsTopObjects,$(SCRAMSTORENAME_LIB)))
AnalysisDataFormatsTopObjects_PRE_INIT_FUNC += $$(eval $$(call LCGDict,AnalysisDataFormatsTopObjects,0,src/AnalysisDataFormats/TopObjects/src/classes.h,src/AnalysisDataFormats/TopObjects/src/classes_def.xml,$(SCRAMSTORENAME_LIB),$(GENREFLEX_ARGS) --fail_on_warnings,Capabilities))
AnalysisDataFormatsTopObjects_EX_LIB   := AnalysisDataFormatsTopObjects
AnalysisDataFormatsTopObjects_EX_USE   := $(foreach d,$(AnalysisDataFormatsTopObjects_LOC_USE),$(if $($(d)_LOC_FLAGS_NO_RECURSIVE_EXPORT),,$d))
AnalysisDataFormatsTopObjects_PACKAGE := self/src/AnalysisDataFormats/TopObjects/src
ALL_PRODS += AnalysisDataFormatsTopObjects
AnalysisDataFormatsTopObjects_INIT_FUNC        += $$(eval $$(call Library,AnalysisDataFormatsTopObjects,src/AnalysisDataFormats/TopObjects/src,src_AnalysisDataFormats_TopObjects_src,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS)))
endif
ifeq ($(strip $(DataFormats/PatCandidates)),)
ALL_COMMONRULES += src_DataFormats_PatCandidates_src
src_DataFormats_PatCandidates_src_parent := DataFormats/PatCandidates
src_DataFormats_PatCandidates_src_INIT_FUNC := $$(eval $$(call CommonProductRules,src_DataFormats_PatCandidates_src,src/DataFormats/PatCandidates/src,LIBRARY))
DataFormatsPatCandidates := self/DataFormats/PatCandidates
DataFormats/PatCandidates := DataFormatsPatCandidates
DataFormatsPatCandidates_files := $(patsubst src/DataFormats/PatCandidates/src/%,%,$(wildcard $(foreach dir,src/DataFormats/PatCandidates/src ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
DataFormatsPatCandidates_BuildFile    := $(WORKINGDIR)/cache/bf/src/DataFormats/PatCandidates/BuildFile
DataFormatsPatCandidates_LOC_USE := self FWCore/Utilities DataFormats/Common DataFormats/StdDictionaries DataFormats/Candidate DataFormats/MuonReco DataFormats/TauReco DataFormats/JetReco DataFormats/METReco DataFormats/EgammaCandidates DataFormats/ParticleFlowCandidate DataFormats/TrackReco DataFormats/HepMCCandidate DataFormats/BTauReco CondFormats/L1TObjects DataFormats/L1Trigger DataFormats/HLTReco boost rootrflx
DataFormatsPatCandidates_PRE_INIT_FUNC += $$(eval $$(call edmPlugin,DataFormatsPatCandidatesCapabilities,DataFormatsPatCandidates,$(SCRAMSTORENAME_LIB)))
DataFormatsPatCandidates_PRE_INIT_FUNC += $$(eval $$(call LCGDict,DataFormatsPatCandidates,0,src/DataFormats/PatCandidates/src/classes.h,src/DataFormats/PatCandidates/src/classes_def.xml,$(SCRAMSTORENAME_LIB),$(GENREFLEX_ARGS) --fail_on_warnings,Capabilities))
DataFormatsPatCandidates_EX_LIB   := DataFormatsPatCandidates
DataFormatsPatCandidates_EX_USE   := $(foreach d,$(DataFormatsPatCandidates_LOC_USE),$(if $($(d)_LOC_FLAGS_NO_RECURSIVE_EXPORT),,$d))
DataFormatsPatCandidates_PACKAGE := self/src/DataFormats/PatCandidates/src
ALL_PRODS += DataFormatsPatCandidates
DataFormatsPatCandidates_INIT_FUNC        += $$(eval $$(call Library,DataFormatsPatCandidates,src/DataFormats/PatCandidates/src,src_DataFormats_PatCandidates_src,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS)))
endif
ifeq ($(strip $(EGamma/EGammaAnalysisTools)),)
ALL_COMMONRULES += src_EGamma_EGammaAnalysisTools_src
src_EGamma_EGammaAnalysisTools_src_parent := EGamma/EGammaAnalysisTools
src_EGamma_EGammaAnalysisTools_src_INIT_FUNC := $$(eval $$(call CommonProductRules,src_EGamma_EGammaAnalysisTools_src,src/EGamma/EGammaAnalysisTools/src,LIBRARY))
EGammaEGammaAnalysisTools := self/EGamma/EGammaAnalysisTools
EGamma/EGammaAnalysisTools := EGammaEGammaAnalysisTools
EGammaEGammaAnalysisTools_files := $(patsubst src/EGamma/EGammaAnalysisTools/src/%,%,$(wildcard $(foreach dir,src/EGamma/EGammaAnalysisTools/src ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
EGammaEGammaAnalysisTools_BuildFile    := $(WORKINGDIR)/cache/bf/src/EGamma/EGammaAnalysisTools/BuildFile
EGammaEGammaAnalysisTools_LOC_USE := self CondCore/DBOutputService CondFormats/EgammaObjects CondFormats/PhysicsToolsObjects DataFormats/Candidate DataFormats/Common DataFormats/EgammaCandidates DataFormats/EgammaReco DataFormats/TrackReco FWCore/Framework FWCore/MessageLogger FWCore/ParameterSet FWCore/ServiceRegistry PhysicsTools/UtilAlgos RecoEcal/EgammaCoreTools TrackingTools/IPTools RecoEgamma/EgammaTools clhep root roottmva
EGammaEGammaAnalysisTools_EX_LIB   := EGammaEGammaAnalysisTools
EGammaEGammaAnalysisTools_EX_USE   := $(foreach d,$(EGammaEGammaAnalysisTools_LOC_USE),$(if $($(d)_LOC_FLAGS_NO_RECURSIVE_EXPORT),,$d))
EGammaEGammaAnalysisTools_PACKAGE := self/src/EGamma/EGammaAnalysisTools/src
ALL_PRODS += EGammaEGammaAnalysisTools
EGammaEGammaAnalysisTools_INIT_FUNC        += $$(eval $$(call Library,EGammaEGammaAnalysisTools,src/EGamma/EGammaAnalysisTools/src,src_EGamma_EGammaAnalysisTools_src,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS)))
endif
ifeq ($(strip $(ElectroWeakAnalysis/Utilities)),)
ALL_COMMONRULES += src_ElectroWeakAnalysis_Utilities_src
src_ElectroWeakAnalysis_Utilities_src_parent := ElectroWeakAnalysis/Utilities
src_ElectroWeakAnalysis_Utilities_src_INIT_FUNC := $$(eval $$(call CommonProductRules,src_ElectroWeakAnalysis_Utilities_src,src/ElectroWeakAnalysis/Utilities/src,LIBRARY))
ElectroWeakAnalysisUtilities := self/ElectroWeakAnalysis/Utilities
ElectroWeakAnalysis/Utilities := ElectroWeakAnalysisUtilities
ElectroWeakAnalysisUtilities_files := $(patsubst src/ElectroWeakAnalysis/Utilities/src/%,%,$(wildcard $(foreach dir,src/ElectroWeakAnalysis/Utilities/src ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
ElectroWeakAnalysisUtilities_BuildFile    := $(WORKINGDIR)/cache/bf/src/ElectroWeakAnalysis/Utilities/BuildFile
ElectroWeakAnalysisUtilities_LOC_USE := self CommonTools/Utils FWCore/Framework FWCore/PluginManager FWCore/ParameterSet DataFormats/Common DataFormats/Candidate DataFormats/PatCandidates CommonTools/UtilAlgos CommonTools/CandUtils rootrflx RecoMuon/Records CondFormats/RecoMuonObjects MuonAnalysis/MomentumScaleCalibration lhapdf
ElectroWeakAnalysisUtilities_PRE_INIT_FUNC += $$(eval $$(call edmPlugin,ElectroWeakAnalysisUtilities,ElectroWeakAnalysisUtilities,$(SCRAMSTORENAME_LIB)))
ElectroWeakAnalysisUtilities_PACKAGE := self/src/ElectroWeakAnalysis/Utilities/src
ALL_PRODS += ElectroWeakAnalysisUtilities
ElectroWeakAnalysisUtilities_INIT_FUNC        += $$(eval $$(call Library,ElectroWeakAnalysisUtilities,src/ElectroWeakAnalysis/Utilities/src,src_ElectroWeakAnalysis_Utilities_src,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS)))
endif
ifeq ($(strip $(PhysicsTools/PatAlgos)),)
ALL_COMMONRULES += src_PhysicsTools_PatAlgos_src
src_PhysicsTools_PatAlgos_src_parent := PhysicsTools/PatAlgos
src_PhysicsTools_PatAlgos_src_INIT_FUNC := $$(eval $$(call CommonProductRules,src_PhysicsTools_PatAlgos_src,src/PhysicsTools/PatAlgos/src,LIBRARY))
PhysicsToolsPatAlgos := self/PhysicsTools/PatAlgos
PhysicsTools/PatAlgos := PhysicsToolsPatAlgos
PhysicsToolsPatAlgos_files := $(patsubst src/PhysicsTools/PatAlgos/src/%,%,$(wildcard $(foreach dir,src/PhysicsTools/PatAlgos/src ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
PhysicsToolsPatAlgos_BuildFile    := $(WORKINGDIR)/cache/bf/src/PhysicsTools/PatAlgos/BuildFile
PhysicsToolsPatAlgos_LOC_USE := self DataFormats/Candidate DataFormats/Common DataFormats/EgammaCandidates DataFormats/EgammaReco DataFormats/JetReco DataFormats/Math DataFormats/METReco DataFormats/MuonReco DataFormats/PatCandidates DataFormats/TauReco DataFormats/TrackReco DataFormats/VertexReco FWCore/Framework FWCore/ParameterSet FWCore/ServiceRegistry FWCore/Utilities PhysicsTools/PatUtils PhysicsTools/Utilities PhysicsTools/IsolationAlgos clhep
PhysicsToolsPatAlgos_EX_LIB   := PhysicsToolsPatAlgos
PhysicsToolsPatAlgos_EX_USE   := $(foreach d,$(PhysicsToolsPatAlgos_LOC_USE),$(if $($(d)_LOC_FLAGS_NO_RECURSIVE_EXPORT),,$d))
PhysicsToolsPatAlgos_PACKAGE := self/src/PhysicsTools/PatAlgos/src
ALL_PRODS += PhysicsToolsPatAlgos
PhysicsToolsPatAlgos_INIT_FUNC        += $$(eval $$(call Library,PhysicsToolsPatAlgos,src/PhysicsTools/PatAlgos/src,src_PhysicsTools_PatAlgos_src,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS)))
endif
ifeq ($(strip $(RecoParticleFlow/PFProducer)),)
ALL_COMMONRULES += src_RecoParticleFlow_PFProducer_src
src_RecoParticleFlow_PFProducer_src_parent := RecoParticleFlow/PFProducer
src_RecoParticleFlow_PFProducer_src_INIT_FUNC := $$(eval $$(call CommonProductRules,src_RecoParticleFlow_PFProducer_src,src/RecoParticleFlow/PFProducer/src,LIBRARY))
RecoParticleFlowPFProducer := self/RecoParticleFlow/PFProducer
RecoParticleFlow/PFProducer := RecoParticleFlowPFProducer
RecoParticleFlowPFProducer_files := $(patsubst src/RecoParticleFlow/PFProducer/src/%,%,$(wildcard $(foreach dir,src/RecoParticleFlow/PFProducer/src ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
RecoParticleFlowPFProducer_BuildFile    := $(WORKINGDIR)/cache/bf/src/RecoParticleFlow/PFProducer/BuildFile
RecoParticleFlowPFProducer_LOC_USE := self CondFormats/DataRecord CondFormats/EgammaObjects DataFormats/CaloRecHit DataFormats/Common DataFormats/EgammaCandidates DataFormats/ParticleFlowCandidate DataFormats/ParticleFlowReco DataFormats/Provenance DataFormats/TrackReco DataFormats/VertexReco DataFormats/MuonReco DataFormats/EcalDetId RecoParticleFlow/PFClusterTools RecoEcal/EgammaCoreTools boost clhep rootmath roottmva
RecoParticleFlowPFProducer_EX_LIB   := RecoParticleFlowPFProducer
RecoParticleFlowPFProducer_EX_USE   := $(foreach d,$(RecoParticleFlowPFProducer_LOC_USE),$(if $($(d)_LOC_FLAGS_NO_RECURSIVE_EXPORT),,$d))
RecoParticleFlowPFProducer_PACKAGE := self/src/RecoParticleFlow/PFProducer/src
ALL_PRODS += RecoParticleFlowPFProducer
RecoParticleFlowPFProducer_INIT_FUNC        += $$(eval $$(call Library,RecoParticleFlowPFProducer,src/RecoParticleFlow/PFProducer/src,src_RecoParticleFlow_PFProducer_src,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS)))
endif
ifeq ($(strip $(TopQuarkAnalysis/Examples)),)
src_TopQuarkAnalysis_Examples := self/TopQuarkAnalysis/Examples
TopQuarkAnalysis/Examples  := src_TopQuarkAnalysis_Examples
src_TopQuarkAnalysis_Examples_BuildFile    := $(WORKINGDIR)/cache/bf/src/TopQuarkAnalysis/Examples/BuildFile
src_TopQuarkAnalysis_Examples_EX_USE := DataFormats/Provenance AnalysisDataFormats/TopObjects FWCore/Framework self DataFormats/RecoCandidate DataFormats/Candidate CommonTools/UtilAlgos FWCore/ServiceRegistry CommonTools/CandUtils root DataFormats/PatCandidates
ALL_EXTERNAL_PRODS += src_TopQuarkAnalysis_Examples
src_TopQuarkAnalysis_Examples_INIT_FUNC += $$(eval $$(call EmptyPackage,src_TopQuarkAnalysis_Examples,src/TopQuarkAnalysis/Examples))
endif

ifeq ($(strip $(TopQuarkAnalysis/TopEventProducers)),)
ALL_COMMONRULES += src_TopQuarkAnalysis_TopEventProducers_src
src_TopQuarkAnalysis_TopEventProducers_src_parent := TopQuarkAnalysis/TopEventProducers
src_TopQuarkAnalysis_TopEventProducers_src_INIT_FUNC := $$(eval $$(call CommonProductRules,src_TopQuarkAnalysis_TopEventProducers_src,src/TopQuarkAnalysis/TopEventProducers/src,LIBRARY))
TopQuarkAnalysisTopEventProducers := self/TopQuarkAnalysis/TopEventProducers
TopQuarkAnalysis/TopEventProducers := TopQuarkAnalysisTopEventProducers
TopQuarkAnalysisTopEventProducers_files := $(patsubst src/TopQuarkAnalysis/TopEventProducers/src/%,%,$(wildcard $(foreach dir,src/TopQuarkAnalysis/TopEventProducers/src ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
TopQuarkAnalysisTopEventProducers_BuildFile    := $(WORKINGDIR)/cache/bf/src/TopQuarkAnalysis/TopEventProducers/BuildFile
TopQuarkAnalysisTopEventProducers_LOC_USE := self FWCore/Framework FWCore/ParameterSet CommonTools/Utils DataFormats/PatCandidates AnalysisDataFormats/TopObjects TopQuarkAnalysis/TopSkimming TopQuarkAnalysis/TopKinFitter TopQuarkAnalysis/TopHitFit TopQuarkAnalysis/TopJetCombination TopQuarkAnalysis/TopEventSelection
TopQuarkAnalysisTopEventProducers_PRE_INIT_FUNC += $$(eval $$(call edmPlugin,TopQuarkAnalysisTopEventProducers,TopQuarkAnalysisTopEventProducers,$(SCRAMSTORENAME_LIB)))
TopQuarkAnalysisTopEventProducers_PACKAGE := self/src/TopQuarkAnalysis/TopEventProducers/src
ALL_PRODS += TopQuarkAnalysisTopEventProducers
TopQuarkAnalysisTopEventProducers_INIT_FUNC        += $$(eval $$(call Library,TopQuarkAnalysisTopEventProducers,src/TopQuarkAnalysis/TopEventProducers/src,src_TopQuarkAnalysis_TopEventProducers_src,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS)))
endif
ifeq ($(strip $(TopQuarkAnalysis/TopEventSelection)),)
ALL_COMMONRULES += src_TopQuarkAnalysis_TopEventSelection_src
src_TopQuarkAnalysis_TopEventSelection_src_parent := TopQuarkAnalysis/TopEventSelection
src_TopQuarkAnalysis_TopEventSelection_src_INIT_FUNC := $$(eval $$(call CommonProductRules,src_TopQuarkAnalysis_TopEventSelection_src,src/TopQuarkAnalysis/TopEventSelection/src,LIBRARY))
TopQuarkAnalysisTopEventSelection := self/TopQuarkAnalysis/TopEventSelection
TopQuarkAnalysis/TopEventSelection := TopQuarkAnalysisTopEventSelection
TopQuarkAnalysisTopEventSelection_files := $(patsubst src/TopQuarkAnalysis/TopEventSelection/src/%,%,$(wildcard $(foreach dir,src/TopQuarkAnalysis/TopEventSelection/src ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
TopQuarkAnalysisTopEventSelection_BuildFile    := $(WORKINGDIR)/cache/bf/src/TopQuarkAnalysis/TopEventSelection/BuildFile
TopQuarkAnalysisTopEventSelection_LOC_USE := self FWCore/Framework PhysicsTools/CandUtils TopQuarkAnalysis/TopTools DataFormats/PatCandidates AnalysisDataFormats/TopObjects
TopQuarkAnalysisTopEventSelection_EX_LIB   := TopQuarkAnalysisTopEventSelection
TopQuarkAnalysisTopEventSelection_EX_USE   := $(foreach d,$(TopQuarkAnalysisTopEventSelection_LOC_USE),$(if $($(d)_LOC_FLAGS_NO_RECURSIVE_EXPORT),,$d))
TopQuarkAnalysisTopEventSelection_PACKAGE := self/src/TopQuarkAnalysis/TopEventSelection/src
ALL_PRODS += TopQuarkAnalysisTopEventSelection
TopQuarkAnalysisTopEventSelection_INIT_FUNC        += $$(eval $$(call Library,TopQuarkAnalysisTopEventSelection,src/TopQuarkAnalysis/TopEventSelection/src,src_TopQuarkAnalysis_TopEventSelection_src,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS)))
endif
ifeq ($(strip $(TopQuarkAnalysis/TopHitFit)),)
ALL_COMMONRULES += src_TopQuarkAnalysis_TopHitFit_src
src_TopQuarkAnalysis_TopHitFit_src_parent := TopQuarkAnalysis/TopHitFit
src_TopQuarkAnalysis_TopHitFit_src_INIT_FUNC := $$(eval $$(call CommonProductRules,src_TopQuarkAnalysis_TopHitFit_src,src/TopQuarkAnalysis/TopHitFit/src,LIBRARY))
TopQuarkAnalysisTopHitFit := self/TopQuarkAnalysis/TopHitFit
TopQuarkAnalysis/TopHitFit := TopQuarkAnalysisTopHitFit
TopQuarkAnalysisTopHitFit_files := $(patsubst src/TopQuarkAnalysis/TopHitFit/src/%,%,$(wildcard $(foreach dir,src/TopQuarkAnalysis/TopHitFit/src ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
TopQuarkAnalysisTopHitFit_BuildFile    := $(WORKINGDIR)/cache/bf/src/TopQuarkAnalysis/TopHitFit/BuildFile
TopQuarkAnalysisTopHitFit_LOC_USE := self clhep root DataFormats/PatCandidates FWCore/ParameterSet
TopQuarkAnalysisTopHitFit_EX_LIB   := TopQuarkAnalysisTopHitFit
TopQuarkAnalysisTopHitFit_EX_USE   := $(foreach d,$(TopQuarkAnalysisTopHitFit_LOC_USE),$(if $($(d)_LOC_FLAGS_NO_RECURSIVE_EXPORT),,$d))
TopQuarkAnalysisTopHitFit_PACKAGE := self/src/TopQuarkAnalysis/TopHitFit/src
ALL_PRODS += TopQuarkAnalysisTopHitFit
TopQuarkAnalysisTopHitFit_INIT_FUNC        += $$(eval $$(call Library,TopQuarkAnalysisTopHitFit,src/TopQuarkAnalysis/TopHitFit/src,src_TopQuarkAnalysis_TopHitFit_src,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS)))
endif
ifeq ($(strip $(TopQuarkAnalysis/TopJetCombination)),)
ALL_COMMONRULES += src_TopQuarkAnalysis_TopJetCombination_src
src_TopQuarkAnalysis_TopJetCombination_src_parent := TopQuarkAnalysis/TopJetCombination
src_TopQuarkAnalysis_TopJetCombination_src_INIT_FUNC := $$(eval $$(call CommonProductRules,src_TopQuarkAnalysis_TopJetCombination_src,src/TopQuarkAnalysis/TopJetCombination/src,LIBRARY))
TopQuarkAnalysisTopJetCombination := self/TopQuarkAnalysis/TopJetCombination
TopQuarkAnalysis/TopJetCombination := TopQuarkAnalysisTopJetCombination
TopQuarkAnalysisTopJetCombination_files := $(patsubst src/TopQuarkAnalysis/TopJetCombination/src/%,%,$(wildcard $(foreach dir,src/TopQuarkAnalysis/TopJetCombination/src ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
TopQuarkAnalysisTopJetCombination_BuildFile    := $(WORKINGDIR)/cache/bf/src/TopQuarkAnalysis/TopJetCombination/BuildFile
TopQuarkAnalysisTopJetCombination_LOC_USE := self AnalysisDataFormats/TopObjects TopQuarkAnalysis/TopTools FWCore/Framework
TopQuarkAnalysisTopJetCombination_EX_LIB   := TopQuarkAnalysisTopJetCombination
TopQuarkAnalysisTopJetCombination_EX_USE   := $(foreach d,$(TopQuarkAnalysisTopJetCombination_LOC_USE),$(if $($(d)_LOC_FLAGS_NO_RECURSIVE_EXPORT),,$d))
TopQuarkAnalysisTopJetCombination_PACKAGE := self/src/TopQuarkAnalysis/TopJetCombination/src
ALL_PRODS += TopQuarkAnalysisTopJetCombination
TopQuarkAnalysisTopJetCombination_INIT_FUNC        += $$(eval $$(call Library,TopQuarkAnalysisTopJetCombination,src/TopQuarkAnalysis/TopJetCombination/src,src_TopQuarkAnalysis_TopJetCombination_src,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS)))
endif
ifeq ($(strip $(TopQuarkAnalysis/TopKinFitter)),)
ALL_COMMONRULES += src_TopQuarkAnalysis_TopKinFitter_src
src_TopQuarkAnalysis_TopKinFitter_src_parent := TopQuarkAnalysis/TopKinFitter
src_TopQuarkAnalysis_TopKinFitter_src_INIT_FUNC := $$(eval $$(call CommonProductRules,src_TopQuarkAnalysis_TopKinFitter_src,src/TopQuarkAnalysis/TopKinFitter/src,LIBRARY))
TopQuarkAnalysisTopKinFitter := self/TopQuarkAnalysis/TopKinFitter
TopQuarkAnalysis/TopKinFitter := TopQuarkAnalysisTopKinFitter
TopQuarkAnalysisTopKinFitter_files := $(patsubst src/TopQuarkAnalysis/TopKinFitter/src/%,%,$(wildcard $(foreach dir,src/TopQuarkAnalysis/TopKinFitter/src ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
TopQuarkAnalysisTopKinFitter_BuildFile    := $(WORKINGDIR)/cache/bf/src/TopQuarkAnalysis/TopKinFitter/BuildFile
TopQuarkAnalysisTopKinFitter_LOC_USE := self CommonTools/Utils FWCore/ParameterSet PhysicsTools/KinFitter AnalysisDataFormats/TopObjects
TopQuarkAnalysisTopKinFitter_EX_LIB   := TopQuarkAnalysisTopKinFitter
TopQuarkAnalysisTopKinFitter_EX_USE   := $(foreach d,$(TopQuarkAnalysisTopKinFitter_LOC_USE),$(if $($(d)_LOC_FLAGS_NO_RECURSIVE_EXPORT),,$d))
TopQuarkAnalysisTopKinFitter_PACKAGE := self/src/TopQuarkAnalysis/TopKinFitter/src
ALL_PRODS += TopQuarkAnalysisTopKinFitter
TopQuarkAnalysisTopKinFitter_INIT_FUNC        += $$(eval $$(call Library,TopQuarkAnalysisTopKinFitter,src/TopQuarkAnalysis/TopKinFitter/src,src_TopQuarkAnalysis_TopKinFitter_src,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS)))
endif
ifeq ($(strip $(TopQuarkAnalysis/TopObjectResolutions)),)
ALL_COMMONRULES += src_TopQuarkAnalysis_TopObjectResolutions_src
src_TopQuarkAnalysis_TopObjectResolutions_src_parent := TopQuarkAnalysis/TopObjectResolutions
src_TopQuarkAnalysis_TopObjectResolutions_src_INIT_FUNC := $$(eval $$(call CommonProductRules,src_TopQuarkAnalysis_TopObjectResolutions_src,src/TopQuarkAnalysis/TopObjectResolutions/src,LIBRARY))
TopQuarkAnalysisTopObjectResolutions := self/TopQuarkAnalysis/TopObjectResolutions
TopQuarkAnalysis/TopObjectResolutions := TopQuarkAnalysisTopObjectResolutions
TopQuarkAnalysisTopObjectResolutions_files := $(patsubst src/TopQuarkAnalysis/TopObjectResolutions/src/%,%,$(wildcard $(foreach dir,src/TopQuarkAnalysis/TopObjectResolutions/src ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
TopQuarkAnalysisTopObjectResolutions_BuildFile    := $(WORKINGDIR)/cache/bf/src/TopQuarkAnalysis/TopObjectResolutions/BuildFile
TopQuarkAnalysisTopObjectResolutions_LOC_USE := self CommonTools/UtilAlgos FWCore/Framework FWCore/PluginManager FWCore/ParameterSet root AnalysisDataFormats/TopObjects
TopQuarkAnalysisTopObjectResolutions_EX_USE   := $(foreach d,$(TopQuarkAnalysisTopObjectResolutions_LOC_USE),$(if $($(d)_LOC_FLAGS_NO_RECURSIVE_EXPORT),,$d))
TopQuarkAnalysisTopObjectResolutions_PACKAGE := self/src/TopQuarkAnalysis/TopObjectResolutions/src
ALL_PRODS += TopQuarkAnalysisTopObjectResolutions
TopQuarkAnalysisTopObjectResolutions_INIT_FUNC        += $$(eval $$(call Library,TopQuarkAnalysisTopObjectResolutions,src/TopQuarkAnalysis/TopObjectResolutions/src,src_TopQuarkAnalysis_TopObjectResolutions_src,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS)))
endif
ifeq ($(strip $(TopQuarkAnalysis/TopSkimming)),)
ALL_COMMONRULES += src_TopQuarkAnalysis_TopSkimming_src
src_TopQuarkAnalysis_TopSkimming_src_parent := TopQuarkAnalysis/TopSkimming
src_TopQuarkAnalysis_TopSkimming_src_INIT_FUNC := $$(eval $$(call CommonProductRules,src_TopQuarkAnalysis_TopSkimming_src,src/TopQuarkAnalysis/TopSkimming/src,LIBRARY))
TopQuarkAnalysisTopSkimming := self/TopQuarkAnalysis/TopSkimming
TopQuarkAnalysis/TopSkimming := TopQuarkAnalysisTopSkimming
TopQuarkAnalysisTopSkimming_files := $(patsubst src/TopQuarkAnalysis/TopSkimming/src/%,%,$(wildcard $(foreach dir,src/TopQuarkAnalysis/TopSkimming/src ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
TopQuarkAnalysisTopSkimming_BuildFile    := $(WORKINGDIR)/cache/bf/src/TopQuarkAnalysis/TopSkimming/BuildFile
TopQuarkAnalysisTopSkimming_LOC_USE := self FWCore/ParameterSet
TopQuarkAnalysisTopSkimming_EX_LIB   := TopQuarkAnalysisTopSkimming
TopQuarkAnalysisTopSkimming_EX_USE   := $(foreach d,$(TopQuarkAnalysisTopSkimming_LOC_USE),$(if $($(d)_LOC_FLAGS_NO_RECURSIVE_EXPORT),,$d))
TopQuarkAnalysisTopSkimming_PACKAGE := self/src/TopQuarkAnalysis/TopSkimming/src
ALL_PRODS += TopQuarkAnalysisTopSkimming
TopQuarkAnalysisTopSkimming_INIT_FUNC        += $$(eval $$(call Library,TopQuarkAnalysisTopSkimming,src/TopQuarkAnalysis/TopSkimming/src,src_TopQuarkAnalysis_TopSkimming_src,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS)))
endif
ifeq ($(strip $(TopQuarkAnalysis/TopTools)),)
ALL_COMMONRULES += src_TopQuarkAnalysis_TopTools_src
src_TopQuarkAnalysis_TopTools_src_parent := TopQuarkAnalysis/TopTools
src_TopQuarkAnalysis_TopTools_src_INIT_FUNC := $$(eval $$(call CommonProductRules,src_TopQuarkAnalysis_TopTools_src,src/TopQuarkAnalysis/TopTools/src,LIBRARY))
TopQuarkAnalysisTopTools := self/TopQuarkAnalysis/TopTools
TopQuarkAnalysis/TopTools := TopQuarkAnalysisTopTools
TopQuarkAnalysisTopTools_files := $(patsubst src/TopQuarkAnalysis/TopTools/src/%,%,$(wildcard $(foreach dir,src/TopQuarkAnalysis/TopTools/src ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
TopQuarkAnalysisTopTools_BuildFile    := $(WORKINGDIR)/cache/bf/src/TopQuarkAnalysis/TopTools/BuildFile
TopQuarkAnalysisTopTools_LOC_USE := self rootgpad DataFormats/PatCandidates
TopQuarkAnalysisTopTools_EX_LIB   := TopQuarkAnalysisTopTools
TopQuarkAnalysisTopTools_EX_USE   := $(foreach d,$(TopQuarkAnalysisTopTools_LOC_USE),$(if $($(d)_LOC_FLAGS_NO_RECURSIVE_EXPORT),,$d))
TopQuarkAnalysisTopTools_PACKAGE := self/src/TopQuarkAnalysis/TopTools/src
ALL_PRODS += TopQuarkAnalysisTopTools
TopQuarkAnalysisTopTools_INIT_FUNC        += $$(eval $$(call Library,TopQuarkAnalysisTopTools,src/TopQuarkAnalysis/TopTools/src,src_TopQuarkAnalysis_TopTools_src,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS)))
endif
ifeq ($(strip $(BEAN/BEANmaker)),)
ALL_COMMONRULES += src_BEAN_BEANmaker_src
src_BEAN_BEANmaker_src_parent := BEAN/BEANmaker
src_BEAN_BEANmaker_src_INIT_FUNC := $$(eval $$(call CommonProductRules,src_BEAN_BEANmaker_src,src/BEAN/BEANmaker/src,LIBRARY))
BEANBEANmaker := self/BEAN/BEANmaker
BEAN/BEANmaker := BEANBEANmaker
BEANBEANmaker_files := $(patsubst src/BEAN/BEANmaker/src/%,%,$(wildcard $(foreach dir,src/BEAN/BEANmaker/src ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
BEANBEANmaker_BuildFile    := $(WORKINGDIR)/cache/bf/src/BEAN/BEANmaker/BuildFile
BEANBEANmaker_LOC_USE := self BEAN/Collections CommonTools/Utils DataFormats/FWLite DataFormats/Math root roottmva
BEANBEANmaker_EX_LIB   := BEANBEANmaker
BEANBEANmaker_EX_USE   := $(foreach d,$(BEANBEANmaker_LOC_USE),$(if $($(d)_LOC_FLAGS_NO_RECURSIVE_EXPORT),,$d))
BEANBEANmaker_PACKAGE := self/src/BEAN/BEANmaker/src
ALL_PRODS += BEANBEANmaker
BEANBEANmaker_INIT_FUNC        += $$(eval $$(call Library,BEANBEANmaker,src/BEAN/BEANmaker/src,src_BEAN_BEANmaker_src,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS)))
endif
ifeq ($(strip $(BEAN/Collections)),)
ALL_COMMONRULES += src_BEAN_Collections_src
src_BEAN_Collections_src_parent := BEAN/Collections
src_BEAN_Collections_src_INIT_FUNC := $$(eval $$(call CommonProductRules,src_BEAN_Collections_src,src/BEAN/Collections/src,LIBRARY))
BEANCollections := self/BEAN/Collections
BEAN/Collections := BEANCollections
BEANCollections_files := $(patsubst src/BEAN/Collections/src/%,%,$(wildcard $(foreach dir,src/BEAN/Collections/src ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
BEANCollections_BuildFile    := $(WORKINGDIR)/cache/bf/src/BEAN/Collections/BuildFile
BEANCollections_LOC_USE := self DataFormats/Common rootrflx
BEANCollections_PRE_INIT_FUNC += $$(eval $$(call edmPlugin,BEANCollectionsCapabilities,BEANCollections,$(SCRAMSTORENAME_LIB)))
BEANCollections_PRE_INIT_FUNC += $$(eval $$(call LCGDict,BEANCollections,0,src/BEAN/Collections/src/classes.h,src/BEAN/Collections/src/classes_def.xml,$(SCRAMSTORENAME_LIB),$(GENREFLEX_ARGS) --fail_on_warnings,Capabilities))
BEANCollections_EX_LIB   := BEANCollections
BEANCollections_EX_USE   := $(foreach d,$(BEANCollections_LOC_USE),$(if $($(d)_LOC_FLAGS_NO_RECURSIVE_EXPORT),,$d))
BEANCollections_PACKAGE := self/src/BEAN/Collections/src
ALL_PRODS += BEANCollections
BEANCollections_INIT_FUNC        += $$(eval $$(call Library,BEANCollections,src/BEAN/Collections/src,src_BEAN_Collections_src,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS)))
endif
ifeq ($(strip $(BEAN/Q2Weights)),)
ALL_COMMONRULES += src_BEAN_Q2Weights_src
src_BEAN_Q2Weights_src_parent := BEAN/Q2Weights
src_BEAN_Q2Weights_src_INIT_FUNC := $$(eval $$(call CommonProductRules,src_BEAN_Q2Weights_src,src/BEAN/Q2Weights/src,LIBRARY))
BEANQ2Weights := self/BEAN/Q2Weights
BEAN/Q2Weights := BEANQ2Weights
BEANQ2Weights_files := $(patsubst src/BEAN/Q2Weights/src/%,%,$(wildcard $(foreach dir,src/BEAN/Q2Weights/src ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
BEANQ2Weights_BuildFile    := $(WORKINGDIR)/cache/bf/src/BEAN/Q2Weights/BuildFile
BEANQ2Weights_LOC_USE := self FWCore/PluginManager root hepmc DataFormats/Common AnalysisDataFormats/TopObjects FWCore/Framework FWCore/ParameterSet DataFormats/Math DataFormats/JetReco DataFormats/Provenance SimGeneral/HepPDTRecord lhapdf fastjet CommonTools/UtilAlgos
BEANQ2Weights_PRE_INIT_FUNC += $$(eval $$(call edmPlugin,BEANQ2Weights,BEANQ2Weights,$(SCRAMSTORENAME_LIB)))
BEANQ2Weights_PACKAGE := self/src/BEAN/Q2Weights/src
ALL_PRODS += BEANQ2Weights
BEANQ2Weights_INIT_FUNC        += $$(eval $$(call Library,BEANQ2Weights,src/BEAN/Q2Weights/src,src_BEAN_Q2Weights_src,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS)))
endif
ifeq ($(strip $(Muon/MuonAnalysisTools)),)
ALL_COMMONRULES += src_Muon_MuonAnalysisTools_src
src_Muon_MuonAnalysisTools_src_parent := Muon/MuonAnalysisTools
src_Muon_MuonAnalysisTools_src_INIT_FUNC := $$(eval $$(call CommonProductRules,src_Muon_MuonAnalysisTools_src,src/Muon/MuonAnalysisTools/src,LIBRARY))
MuonMuonAnalysisTools := self/Muon/MuonAnalysisTools
Muon/MuonAnalysisTools := MuonMuonAnalysisTools
MuonMuonAnalysisTools_files := $(patsubst src/Muon/MuonAnalysisTools/src/%,%,$(wildcard $(foreach dir,src/Muon/MuonAnalysisTools/src ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
MuonMuonAnalysisTools_BuildFile    := $(WORKINGDIR)/cache/bf/src/Muon/MuonAnalysisTools/BuildFile
MuonMuonAnalysisTools_LOC_USE := self CondCore/DBOutputService CondFormats/EgammaObjects CondFormats/PhysicsToolsObjects DataFormats/Candidate DataFormats/Common DataFormats/EgammaCandidates DataFormats/EgammaReco DataFormats/TrackReco FWCore/Framework FWCore/MessageLogger FWCore/ParameterSet FWCore/ServiceRegistry PhysicsTools/UtilAlgos RecoEcal/EgammaCoreTools TrackingTools/IPTools RecoEgamma/EgammaTools clhep root roottmva
MuonMuonAnalysisTools_EX_LIB   := MuonMuonAnalysisTools
MuonMuonAnalysisTools_EX_USE   := $(foreach d,$(MuonMuonAnalysisTools_LOC_USE),$(if $($(d)_LOC_FLAGS_NO_RECURSIVE_EXPORT),,$d))
MuonMuonAnalysisTools_PACKAGE := self/src/Muon/MuonAnalysisTools/src
ALL_PRODS += MuonMuonAnalysisTools
MuonMuonAnalysisTools_INIT_FUNC        += $$(eval $$(call Library,MuonMuonAnalysisTools,src/Muon/MuonAnalysisTools/src,src_Muon_MuonAnalysisTools_src,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS)))
endif
ifeq ($(strip $(CMGTools/External)),)
ALL_COMMONRULES += src_CMGTools_External_src
src_CMGTools_External_src_parent := CMGTools/External
src_CMGTools_External_src_INIT_FUNC := $$(eval $$(call CommonProductRules,src_CMGTools_External_src,src/CMGTools/External/src,LIBRARY))
CMGToolsExternal := self/CMGTools/External
CMGTools/External := CMGToolsExternal
CMGToolsExternal_files := $(patsubst src/CMGTools/External/src/%,%,$(wildcard $(foreach dir,src/CMGTools/External/src ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
CMGToolsExternal_BuildFile    := $(WORKINGDIR)/cache/bf/src/CMGTools/External/BuildFile
CMGToolsExternal_LOC_FLAGS_CXXFLAGS   := -g
CMGToolsExternal_LOC_USE := self root rootrflx rootcore roottmva FWCore/ParameterSet DataFormats/ParticleFlowCandidate DataFormats/PatCandidates DataFormats/JetReco fastjet
CMGToolsExternal_PRE_INIT_FUNC += $$(eval $$(call edmPlugin,CMGToolsExternalCapabilities,CMGToolsExternal,$(SCRAMSTORENAME_LIB)))
CMGToolsExternal_PRE_INIT_FUNC += $$(eval $$(call LCGDict,CMGToolsExternal,0,src/CMGTools/External/src/classes.h,src/CMGTools/External/src/classes_def.xml,$(SCRAMSTORENAME_LIB),$(GENREFLEX_ARGS) --fail_on_warnings,Capabilities))
CMGToolsExternal_EX_LIB   := CMGToolsExternal
CMGToolsExternal_EX_USE   := $(foreach d,$(CMGToolsExternal_LOC_USE),$(if $($(d)_LOC_FLAGS_NO_RECURSIVE_EXPORT),,$d))
CMGToolsExternal_PACKAGE := self/src/CMGTools/External/src
ALL_PRODS += CMGToolsExternal
CMGToolsExternal_INIT_FUNC        += $$(eval $$(call Library,CMGToolsExternal,src/CMGTools/External/src,src_CMGTools_External_src,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS)))
endif
ifeq ($(strip $(CommonTools/ParticleFlow)),)
ALL_COMMONRULES += src_CommonTools_ParticleFlow_src
src_CommonTools_ParticleFlow_src_parent := CommonTools/ParticleFlow
src_CommonTools_ParticleFlow_src_INIT_FUNC := $$(eval $$(call CommonProductRules,src_CommonTools_ParticleFlow_src,src/CommonTools/ParticleFlow/src,LIBRARY))
CommonToolsParticleFlow := self/CommonTools/ParticleFlow
CommonTools/ParticleFlow := CommonToolsParticleFlow
CommonToolsParticleFlow_files := $(patsubst src/CommonTools/ParticleFlow/src/%,%,$(wildcard $(foreach dir,src/CommonTools/ParticleFlow/src ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
CommonToolsParticleFlow_BuildFile    := $(WORKINGDIR)/cache/bf/src/CommonTools/ParticleFlow/BuildFile
CommonToolsParticleFlow_LOC_USE := self DataFormats/Common DataFormats/ParticleFlowCandidate DataFormats/EgammaCandidates DataFormats/METReco DataFormats/JetReco DataFormats/PatCandidates rootmath FWCore/ParameterSet
CommonToolsParticleFlow_EX_LIB   := CommonToolsParticleFlow
CommonToolsParticleFlow_EX_USE   := $(foreach d,$(CommonToolsParticleFlow_LOC_USE),$(if $($(d)_LOC_FLAGS_NO_RECURSIVE_EXPORT),,$d))
CommonToolsParticleFlow_PACKAGE := self/src/CommonTools/ParticleFlow/src
ALL_PRODS += CommonToolsParticleFlow
CommonToolsParticleFlow_INIT_FUNC        += $$(eval $$(call Library,CommonToolsParticleFlow,src/CommonTools/ParticleFlow/src,src_CommonTools_ParticleFlow_src,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS)))
endif
ifeq ($(strip $(CommonTools/RecoUtils)),)
ALL_COMMONRULES += src_CommonTools_RecoUtils_src
src_CommonTools_RecoUtils_src_parent := CommonTools/RecoUtils
src_CommonTools_RecoUtils_src_INIT_FUNC := $$(eval $$(call CommonProductRules,src_CommonTools_RecoUtils_src,src/CommonTools/RecoUtils/src,LIBRARY))
CommonToolsRecoUtils := self/CommonTools/RecoUtils
CommonTools/RecoUtils := CommonToolsRecoUtils
CommonToolsRecoUtils_files := $(patsubst src/CommonTools/RecoUtils/src/%,%,$(wildcard $(foreach dir,src/CommonTools/RecoUtils/src ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
CommonToolsRecoUtils_BuildFile    := $(WORKINGDIR)/cache/bf/src/CommonTools/RecoUtils/BuildFile
CommonToolsRecoUtils_LOC_USE := self DataFormats/Common DataFormats/EgammaCandidates DataFormats/L1GlobalTrigger DataFormats/RecoCandidate DataFormats/Scalers DataFormats/TrackReco DataFormats/VertexReco DataFormats/ParticleFlowReco L1Trigger/GlobalTriggerAnalyzer MagneticField/Records MagneticField/Engine HLTrigger/HLTcore RecoEgamma/EgammaTools RecoVertex/KinematicFit RecoVertex/KinematicFitPrimitives rootrflx TrackingTools/TransientTrack TrackingTools/IPTools TrackingTools/Records FWCore/Framework
CommonToolsRecoUtils_PRE_INIT_FUNC += $$(eval $$(call edmPlugin,CommonToolsRecoUtilsCapabilities,CommonToolsRecoUtils,$(SCRAMSTORENAME_LIB)))
CommonToolsRecoUtils_PRE_INIT_FUNC += $$(eval $$(call LCGDict,CommonToolsRecoUtils,0,src/CommonTools/RecoUtils/src/classes.h,src/CommonTools/RecoUtils/src/classes_def.xml,$(SCRAMSTORENAME_LIB),$(GENREFLEX_ARGS) --fail_on_warnings,Capabilities))
CommonToolsRecoUtils_EX_LIB   := CommonToolsRecoUtils
CommonToolsRecoUtils_EX_USE   := $(foreach d,$(CommonToolsRecoUtils_LOC_USE),$(if $($(d)_LOC_FLAGS_NO_RECURSIVE_EXPORT),,$d))
CommonToolsRecoUtils_PACKAGE := self/src/CommonTools/RecoUtils/src
ALL_PRODS += CommonToolsRecoUtils
CommonToolsRecoUtils_INIT_FUNC        += $$(eval $$(call Library,CommonToolsRecoUtils,src/CommonTools/RecoUtils/src,src_CommonTools_RecoUtils_src,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS)))
endif
ifeq ($(strip $(CondFormats/EgammaObjects)),)
ALL_COMMONRULES += src_CondFormats_EgammaObjects_src
src_CondFormats_EgammaObjects_src_parent := CondFormats/EgammaObjects
src_CondFormats_EgammaObjects_src_INIT_FUNC := $$(eval $$(call CommonProductRules,src_CondFormats_EgammaObjects_src,src/CondFormats/EgammaObjects/src,LIBRARY))
CondFormatsEgammaObjects := self/CondFormats/EgammaObjects
CondFormats/EgammaObjects := CondFormatsEgammaObjects
CondFormatsEgammaObjects_files := $(patsubst src/CondFormats/EgammaObjects/src/%,%,$(wildcard $(foreach dir,src/CondFormats/EgammaObjects/src ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
CondFormatsEgammaObjects_BuildFile    := $(WORKINGDIR)/cache/bf/src/CondFormats/EgammaObjects/BuildFile
CondFormatsEgammaObjects_LOC_USE := self FWCore/Utilities CondFormats/Common CondFormats/PhysicsToolsObjects rootrflx
CondFormatsEgammaObjects_PRE_INIT_FUNC += $$(eval $$(call edmPlugin,CondFormatsEgammaObjectsCapabilities,CondFormatsEgammaObjects,$(SCRAMSTORENAME_LIB)))
CondFormatsEgammaObjects_PRE_INIT_FUNC += $$(eval $$(call LCGDict,CondFormatsEgammaObjects,0,src/CondFormats/EgammaObjects/src/classes.h,src/CondFormats/EgammaObjects/src/classes_def.xml,$(SCRAMSTORENAME_LIB), --fail_on_warnings,Capabilities))
CondFormatsEgammaObjects_EX_LIB   := CondFormatsEgammaObjects
CondFormatsEgammaObjects_EX_USE   := $(foreach d,$(CondFormatsEgammaObjects_LOC_USE),$(if $($(d)_LOC_FLAGS_NO_RECURSIVE_EXPORT),,$d))
CondFormatsEgammaObjects_PACKAGE := self/src/CondFormats/EgammaObjects/src
ALL_PRODS += CondFormatsEgammaObjects
CondFormatsEgammaObjects_INIT_FUNC        += $$(eval $$(call Library,CondFormatsEgammaObjects,src/CondFormats/EgammaObjects/src,src_CondFormats_EgammaObjects_src,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS)))
endif
ifeq ($(strip $(DataFormats/StdDictionaries)),)
ALL_COMMONRULES += src_DataFormats_StdDictionaries_src
src_DataFormats_StdDictionaries_src_parent := DataFormats/StdDictionaries
src_DataFormats_StdDictionaries_src_INIT_FUNC := $$(eval $$(call CommonProductRules,src_DataFormats_StdDictionaries_src,src/DataFormats/StdDictionaries/src,LIBRARY))
DataFormatsStdDictionaries := self/DataFormats/StdDictionaries
DataFormats/StdDictionaries := DataFormatsStdDictionaries
DataFormatsStdDictionaries_files := $(patsubst src/DataFormats/StdDictionaries/src/%,%,$(wildcard $(foreach dir,src/DataFormats/StdDictionaries/src ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
DataFormatsStdDictionaries_BuildFile    := $(WORKINGDIR)/cache/bf/src/DataFormats/StdDictionaries/BuildFile
DataFormatsStdDictionaries_LOC_USE := self rootrflx
DataFormatsStdDictionaries_PRE_INIT_FUNC += $$(eval $$(call edmPlugin,DataFormatsStdDictionariesCapabilities,DataFormatsStdDictionaries,$(SCRAMSTORENAME_LIB)))
DataFormatsStdDictionaries_PRE_INIT_FUNC += $$(eval $$(call LCGDict,DataFormatsStdDictionaries,0,src/DataFormats/StdDictionaries/src/classes.h,src/DataFormats/StdDictionaries/src/classes_def.xml,$(SCRAMSTORENAME_LIB),$(GENREFLEX_ARGS) --fail_on_warnings,Capabilities))
DataFormatsStdDictionaries_EX_LIB   := DataFormatsStdDictionaries
DataFormatsStdDictionaries_EX_USE   := $(foreach d,$(DataFormatsStdDictionaries_LOC_USE),$(if $($(d)_LOC_FLAGS_NO_RECURSIVE_EXPORT),,$d))
DataFormatsStdDictionaries_PACKAGE := self/src/DataFormats/StdDictionaries/src
ALL_PRODS += DataFormatsStdDictionaries
DataFormatsStdDictionaries_INIT_FUNC        += $$(eval $$(call Library,DataFormatsStdDictionaries,src/DataFormats/StdDictionaries/src,src_DataFormats_StdDictionaries_src,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS)))
endif
ifeq ($(strip $(JetMETCorrections/Type1MET)),)
ALL_COMMONRULES += src_JetMETCorrections_Type1MET_src
src_JetMETCorrections_Type1MET_src_parent := JetMETCorrections/Type1MET
src_JetMETCorrections_Type1MET_src_INIT_FUNC := $$(eval $$(call CommonProductRules,src_JetMETCorrections_Type1MET_src,src/JetMETCorrections/Type1MET/src,LIBRARY))
JetMETCorrectionsType1MET := self/JetMETCorrections/Type1MET
JetMETCorrections/Type1MET := JetMETCorrectionsType1MET
JetMETCorrectionsType1MET_files := $(patsubst src/JetMETCorrections/Type1MET/src/%,%,$(wildcard $(foreach dir,src/JetMETCorrections/Type1MET/src ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
JetMETCorrectionsType1MET_BuildFile    := $(WORKINGDIR)/cache/bf/src/JetMETCorrections/Type1MET/BuildFile
JetMETCorrectionsType1MET_LOC_USE := self FWCore/Framework FWCore/MessageLogger FWCore/ParameterSet FWCore/Utilities CondFormats/EgammaObjects DataFormats/Candidate DataFormats/JetReco DataFormats/ParticleFlowCandidate DataFormats/Math DataFormats/METReco DataFormats/MuonReco DataFormats/TauReco DataFormats/VertexReco JetMETCorrections/Objects root
JetMETCorrectionsType1MET_EX_LIB   := JetMETCorrectionsType1MET
JetMETCorrectionsType1MET_EX_USE   := $(foreach d,$(JetMETCorrectionsType1MET_LOC_USE),$(if $($(d)_LOC_FLAGS_NO_RECURSIVE_EXPORT),,$d))
JetMETCorrectionsType1MET_PACKAGE := self/src/JetMETCorrections/Type1MET/src
ALL_PRODS += JetMETCorrectionsType1MET
JetMETCorrectionsType1MET_INIT_FUNC        += $$(eval $$(call Library,JetMETCorrectionsType1MET,src/JetMETCorrections/Type1MET/src,src_JetMETCorrections_Type1MET_src,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS)))
endif
ifeq ($(strip $(PhysicsTools/NtupleUtils)),)
ALL_COMMONRULES += src_PhysicsTools_NtupleUtils_src
src_PhysicsTools_NtupleUtils_src_parent := PhysicsTools/NtupleUtils
src_PhysicsTools_NtupleUtils_src_INIT_FUNC := $$(eval $$(call CommonProductRules,src_PhysicsTools_NtupleUtils_src,src/PhysicsTools/NtupleUtils/src,LIBRARY))
PhysicsToolsNtupleUtils := self/PhysicsTools/NtupleUtils
PhysicsTools/NtupleUtils := PhysicsToolsNtupleUtils
PhysicsToolsNtupleUtils_files := $(patsubst src/PhysicsTools/NtupleUtils/src/%,%,$(wildcard $(foreach dir,src/PhysicsTools/NtupleUtils/src ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
PhysicsToolsNtupleUtils_BuildFile    := $(WORKINGDIR)/cache/bf/src/PhysicsTools/NtupleUtils/BuildFile
PhysicsToolsNtupleUtils_LOC_USE := self root rootmath clhep DataFormats/EgammaCandidates DataFormats/VertexReco DataFormats/TrackReco SimDataFormats/Vertex TrackingTools/PatternTools RecoVertex/KalmanVertexFit RecoVertex/AdaptiveVertexFit RecoVertex/VertexPrimitives RecoVertex/PrimaryVertexProducer TrackingTools/Records TrackingTools/TransientTrack FWCore/Framework FWCore/PluginManager FWCore/ParameterSet
PhysicsToolsNtupleUtils_PRE_INIT_FUNC += $$(eval $$(call edmPlugin,PhysicsToolsNtupleUtilsCapabilities,PhysicsToolsNtupleUtils,$(SCRAMSTORENAME_LIB)))
PhysicsToolsNtupleUtils_PRE_INIT_FUNC += $$(eval $$(call LCGDict,PhysicsToolsNtupleUtils,0,src/PhysicsTools/NtupleUtils/src/classes.h,src/PhysicsTools/NtupleUtils/src/classes_def.xml,$(SCRAMSTORENAME_LIB),$(GENREFLEX_ARGS) --fail_on_warnings,Capabilities))
PhysicsToolsNtupleUtils_EX_LIB   := PhysicsToolsNtupleUtils
PhysicsToolsNtupleUtils_EX_USE   := $(foreach d,$(PhysicsToolsNtupleUtils_LOC_USE),$(if $($(d)_LOC_FLAGS_NO_RECURSIVE_EXPORT),,$d))
PhysicsToolsNtupleUtils_PACKAGE := self/src/PhysicsTools/NtupleUtils/src
ALL_PRODS += PhysicsToolsNtupleUtils
PhysicsToolsNtupleUtils_INIT_FUNC        += $$(eval $$(call Library,PhysicsToolsNtupleUtils,src/PhysicsTools/NtupleUtils/src,src_PhysicsTools_NtupleUtils_src,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS)))
endif
ifeq ($(strip $(PhysicsTools/PatUtils)),)
ALL_COMMONRULES += src_PhysicsTools_PatUtils_src
src_PhysicsTools_PatUtils_src_parent := PhysicsTools/PatUtils
src_PhysicsTools_PatUtils_src_INIT_FUNC := $$(eval $$(call CommonProductRules,src_PhysicsTools_PatUtils_src,src/PhysicsTools/PatUtils/src,LIBRARY))
PhysicsToolsPatUtils := self/PhysicsTools/PatUtils
PhysicsTools/PatUtils := PhysicsToolsPatUtils
PhysicsToolsPatUtils_files := $(patsubst src/PhysicsTools/PatUtils/src/%,%,$(wildcard $(foreach dir,src/PhysicsTools/PatUtils/src ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
PhysicsToolsPatUtils_BuildFile    := $(WORKINGDIR)/cache/bf/src/PhysicsTools/PatUtils/BuildFile
PhysicsToolsPatUtils_LOC_USE := self TrackingTools/Records CommonTools/Utils DataFormats/Math DataFormats/Candidate DataFormats/PatCandidates DataFormats/TrackReco DataFormats/MuonReco DataFormats/GsfTrackReco DataFormats/VertexReco TrackingTools/TransientTrack Utilities/General root
PhysicsToolsPatUtils_PRE_INIT_FUNC += $$(eval $$(call edmPlugin,PhysicsToolsPatUtilsCapabilities,PhysicsToolsPatUtils,$(SCRAMSTORENAME_LIB)))
PhysicsToolsPatUtils_PRE_INIT_FUNC += $$(eval $$(call LCGDict,PhysicsToolsPatUtils,0,src/PhysicsTools/PatUtils/src/classes.h,src/PhysicsTools/PatUtils/src/classes_def.xml,$(SCRAMSTORENAME_LIB),$(GENREFLEX_ARGS) --fail_on_warnings,Capabilities))
PhysicsToolsPatUtils_EX_LIB   := PhysicsToolsPatUtils
PhysicsToolsPatUtils_EX_USE   := $(foreach d,$(PhysicsToolsPatUtils_LOC_USE),$(if $($(d)_LOC_FLAGS_NO_RECURSIVE_EXPORT),,$d))
PhysicsToolsPatUtils_PACKAGE := self/src/PhysicsTools/PatUtils/src
ALL_PRODS += PhysicsToolsPatUtils
PhysicsToolsPatUtils_INIT_FUNC        += $$(eval $$(call Library,PhysicsToolsPatUtils,src/PhysicsTools/PatUtils/src,src_PhysicsTools_PatUtils_src,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS)))
endif
ifeq ($(strip $(RecoBTag/SecondaryVertex)),)
ALL_COMMONRULES += src_RecoBTag_SecondaryVertex_src
src_RecoBTag_SecondaryVertex_src_parent := RecoBTag/SecondaryVertex
src_RecoBTag_SecondaryVertex_src_INIT_FUNC := $$(eval $$(call CommonProductRules,src_RecoBTag_SecondaryVertex_src,src/RecoBTag/SecondaryVertex/src,LIBRARY))
RecoBTagSecondaryVertex := self/RecoBTag/SecondaryVertex
RecoBTag/SecondaryVertex := RecoBTagSecondaryVertex
RecoBTagSecondaryVertex_files := $(patsubst src/RecoBTag/SecondaryVertex/src/%,%,$(wildcard $(foreach dir,src/RecoBTag/SecondaryVertex/src ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
RecoBTagSecondaryVertex_BuildFile    := $(WORKINGDIR)/cache/bf/src/RecoBTag/SecondaryVertex/BuildFile
RecoBTagSecondaryVertex_LOC_USE := self FWCore/ParameterSet FWCore/Utilities DataFormats/Math DataFormats/TrackReco DataFormats/VertexReco DataFormats/BTauReco rootmath
RecoBTagSecondaryVertex_EX_LIB   := RecoBTagSecondaryVertex
RecoBTagSecondaryVertex_EX_USE   := $(foreach d,$(RecoBTagSecondaryVertex_LOC_USE),$(if $($(d)_LOC_FLAGS_NO_RECURSIVE_EXPORT),,$d))
RecoBTagSecondaryVertex_PACKAGE := self/src/RecoBTag/SecondaryVertex/src
ALL_PRODS += RecoBTagSecondaryVertex
RecoBTagSecondaryVertex_INIT_FUNC        += $$(eval $$(call Library,RecoBTagSecondaryVertex,src/RecoBTag/SecondaryVertex/src,src_RecoBTag_SecondaryVertex_src,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS)))
endif
ifeq ($(strip $(RecoTauTag/RecoTau)),)
ALL_COMMONRULES += src_RecoTauTag_RecoTau_src
src_RecoTauTag_RecoTau_src_parent := RecoTauTag/RecoTau
src_RecoTauTag_RecoTau_src_INIT_FUNC := $$(eval $$(call CommonProductRules,src_RecoTauTag_RecoTau_src,src/RecoTauTag/RecoTau/src,LIBRARY))
RecoTauTagRecoTau := self/RecoTauTag/RecoTau
RecoTauTag/RecoTau := RecoTauTagRecoTau
RecoTauTagRecoTau_files := $(patsubst src/RecoTauTag/RecoTau/src/%,%,$(wildcard $(foreach dir,src/RecoTauTag/RecoTau/src ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
RecoTauTagRecoTau_BuildFile    := $(WORKINGDIR)/cache/bf/src/RecoTauTag/RecoTau/BuildFile
RecoTauTagRecoTau_LOC_USE := self MagneticField/Engine MagneticField/Records DataFormats/Math DataFormats/TauReco DataFormats/VertexReco DataFormats/ParticleFlowCandidate DataFormats/TrackReco FWCore/Framework FWCore/MessageLogger FWCore/ParameterSet FWCore/PluginManager Geometry/CaloGeometry Geometry/CaloTopology Geometry/Records Geometry/CommonDetUnit TrackingTools/TransientTrack TrackingTools/IPTools RecoTauTag/TauTagTools RecoVertex/KalmanVertexFit RecoParticleFlow/PFClusterTools TrackingTools/TrackAssociator PhysicsTools/JetMCUtils roottmva
RecoTauTagRecoTau_EX_LIB   := RecoTauTagRecoTau
RecoTauTagRecoTau_EX_USE   := $(foreach d,$(RecoTauTagRecoTau_LOC_USE),$(if $($(d)_LOC_FLAGS_NO_RECURSIVE_EXPORT),,$d))
RecoTauTagRecoTau_PACKAGE := self/src/RecoTauTag/RecoTau/src
ALL_PRODS += RecoTauTagRecoTau
RecoTauTagRecoTau_INIT_FUNC        += $$(eval $$(call Library,RecoTauTagRecoTau,src/RecoTauTag/RecoTau/src,src_RecoTauTag_RecoTau_src,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS)))
endif
ifeq ($(strip $(RecoVertex/AdaptiveVertexFinder)),)
ALL_COMMONRULES += src_RecoVertex_AdaptiveVertexFinder_src
src_RecoVertex_AdaptiveVertexFinder_src_parent := RecoVertex/AdaptiveVertexFinder
src_RecoVertex_AdaptiveVertexFinder_src_INIT_FUNC := $$(eval $$(call CommonProductRules,src_RecoVertex_AdaptiveVertexFinder_src,src/RecoVertex/AdaptiveVertexFinder/src,LIBRARY))
RecoVertexAdaptiveVertexFinder := self/RecoVertex/AdaptiveVertexFinder
RecoVertex/AdaptiveVertexFinder := RecoVertexAdaptiveVertexFinder
RecoVertexAdaptiveVertexFinder_files := $(patsubst src/RecoVertex/AdaptiveVertexFinder/src/%,%,$(wildcard $(foreach dir,src/RecoVertex/AdaptiveVertexFinder/src ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
RecoVertexAdaptiveVertexFinder_BuildFile    := $(WORKINGDIR)/cache/bf/src/RecoVertex/AdaptiveVertexFinder/BuildFile
RecoVertexAdaptiveVertexFinder_LOC_USE := self RecoVertex/KalmanVertexFit RecoVertex/AdaptiveVertexFit RecoVertex/VertexPrimitives RecoVertex/VertexTools TrackingTools/IPTools
RecoVertexAdaptiveVertexFinder_EX_LIB   := RecoVertexAdaptiveVertexFinder
RecoVertexAdaptiveVertexFinder_EX_USE   := $(foreach d,$(RecoVertexAdaptiveVertexFinder_LOC_USE),$(if $($(d)_LOC_FLAGS_NO_RECURSIVE_EXPORT),,$d))
RecoVertexAdaptiveVertexFinder_PACKAGE := self/src/RecoVertex/AdaptiveVertexFinder/src
ALL_PRODS += RecoVertexAdaptiveVertexFinder
RecoVertexAdaptiveVertexFinder_INIT_FUNC        += $$(eval $$(call Library,RecoVertexAdaptiveVertexFinder,src/RecoVertex/AdaptiveVertexFinder/src,src_RecoVertex_AdaptiveVertexFinder_src,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS)))
endif
