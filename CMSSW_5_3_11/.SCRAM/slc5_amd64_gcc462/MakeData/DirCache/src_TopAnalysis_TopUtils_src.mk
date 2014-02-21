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
