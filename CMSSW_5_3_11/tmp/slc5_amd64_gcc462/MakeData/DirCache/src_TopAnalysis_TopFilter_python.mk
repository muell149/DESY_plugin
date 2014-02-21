ifeq ($(strip $(PyTopAnalysisTopFilter)),)
PyTopAnalysisTopFilter := self/src/TopAnalysis/TopFilter/python
PyTopAnalysisTopFilter_files := $(patsubst src/TopAnalysis/TopFilter/python/%,%,$(wildcard $(foreach dir,src/TopAnalysis/TopFilter/python ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
PyTopAnalysisTopFilter_LOC_USE := self
ALL_PYTHON_DIRS += $(patsubst src/%,%,src/TopAnalysis/TopFilter/python)
ALL_PRODS += PyTopAnalysisTopFilter
src_TopAnalysis_TopFilter_python_parent := TopAnalysis/TopFilter
PyTopAnalysisTopFilter_INIT_FUNC        += $$(eval $$(call PythonProduct,PyTopAnalysisTopFilter,src/TopAnalysis/TopFilter/python,src_TopAnalysis_TopFilter_python,1,1,$(SCRAMSTORENAME_PYTHON),$(SCRAMSTORENAME_LIB),,))
else
$(eval $(call MultipleWarningMsg,PyTopAnalysisTopFilter,src/TopAnalysis/TopFilter/python))
endif
ALL_COMMONRULES += src_TopAnalysis_TopFilter_python
src_TopAnalysis_TopFilter_python_INIT_FUNC += $$(eval $$(call CommonProductRules,src_TopAnalysis_TopFilter_python,src/TopAnalysis/TopFilter/python,PYTHON))
