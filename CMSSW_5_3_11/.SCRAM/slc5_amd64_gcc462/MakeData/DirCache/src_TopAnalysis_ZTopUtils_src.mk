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
