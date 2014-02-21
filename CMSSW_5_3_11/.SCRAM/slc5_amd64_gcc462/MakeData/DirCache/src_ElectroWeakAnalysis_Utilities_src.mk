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
