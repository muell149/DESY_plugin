ifeq ($(strip $(PyTopAnalysisTopUtils)),)
PyTopAnalysisTopUtils := self/src/TopAnalysis/TopUtils/python
PyTopAnalysisTopUtils_files := $(patsubst src/TopAnalysis/TopUtils/python/%,%,$(wildcard $(foreach dir,src/TopAnalysis/TopUtils/python ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
PyTopAnalysisTopUtils_LOC_USE := self
ALL_PYTHON_DIRS += $(patsubst src/%,%,src/TopAnalysis/TopUtils/python)
ALL_PRODS += PyTopAnalysisTopUtils
src_TopAnalysis_TopUtils_python_parent := TopAnalysis/TopUtils
PyTopAnalysisTopUtils_INIT_FUNC        += $$(eval $$(call PythonProduct,PyTopAnalysisTopUtils,src/TopAnalysis/TopUtils/python,src_TopAnalysis_TopUtils_python,1,1,$(SCRAMSTORENAME_PYTHON),$(SCRAMSTORENAME_LIB),,))
else
$(eval $(call MultipleWarningMsg,PyTopAnalysisTopUtils,src/TopAnalysis/TopUtils/python))
endif
ALL_COMMONRULES += src_TopAnalysis_TopUtils_python
src_TopAnalysis_TopUtils_python_INIT_FUNC += $$(eval $$(call CommonProductRules,src_TopAnalysis_TopUtils_python,src/TopAnalysis/TopUtils/python,PYTHON))
