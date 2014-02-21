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
