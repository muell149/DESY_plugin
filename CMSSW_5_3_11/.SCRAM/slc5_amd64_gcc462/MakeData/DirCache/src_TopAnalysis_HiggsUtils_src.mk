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
