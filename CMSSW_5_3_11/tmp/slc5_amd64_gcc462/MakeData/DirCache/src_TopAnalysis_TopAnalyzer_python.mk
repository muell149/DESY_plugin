ifeq ($(strip $(PyTopAnalysisTopAnalyzer)),)
PyTopAnalysisTopAnalyzer := self/src/TopAnalysis/TopAnalyzer/python
PyTopAnalysisTopAnalyzer_files := $(patsubst src/TopAnalysis/TopAnalyzer/python/%,%,$(wildcard $(foreach dir,src/TopAnalysis/TopAnalyzer/python ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
PyTopAnalysisTopAnalyzer_LOC_USE := self
ALL_PYTHON_DIRS += $(patsubst src/%,%,src/TopAnalysis/TopAnalyzer/python)
ALL_PRODS += PyTopAnalysisTopAnalyzer
src_TopAnalysis_TopAnalyzer_python_parent := TopAnalysis/TopAnalyzer
PyTopAnalysisTopAnalyzer_INIT_FUNC        += $$(eval $$(call PythonProduct,PyTopAnalysisTopAnalyzer,src/TopAnalysis/TopAnalyzer/python,src_TopAnalysis_TopAnalyzer_python,1,1,$(SCRAMSTORENAME_PYTHON),$(SCRAMSTORENAME_LIB),,))
else
$(eval $(call MultipleWarningMsg,PyTopAnalysisTopAnalyzer,src/TopAnalysis/TopAnalyzer/python))
endif
ALL_COMMONRULES += src_TopAnalysis_TopAnalyzer_python
src_TopAnalysis_TopAnalyzer_python_INIT_FUNC += $$(eval $$(call CommonProductRules,src_TopAnalysis_TopAnalyzer_python,src/TopAnalysis/TopAnalyzer/python,PYTHON))
