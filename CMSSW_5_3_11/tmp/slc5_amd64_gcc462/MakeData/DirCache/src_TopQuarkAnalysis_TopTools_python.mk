ifeq ($(strip $(PyTopQuarkAnalysisTopTools)),)
PyTopQuarkAnalysisTopTools := self/src/TopQuarkAnalysis/TopTools/python
PyTopQuarkAnalysisTopTools_files := $(patsubst src/TopQuarkAnalysis/TopTools/python/%,%,$(wildcard $(foreach dir,src/TopQuarkAnalysis/TopTools/python ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
PyTopQuarkAnalysisTopTools_LOC_USE := self
ALL_PYTHON_DIRS += $(patsubst src/%,%,src/TopQuarkAnalysis/TopTools/python)
ALL_PRODS += PyTopQuarkAnalysisTopTools
src_TopQuarkAnalysis_TopTools_python_parent := TopQuarkAnalysis/TopTools
PyTopQuarkAnalysisTopTools_INIT_FUNC        += $$(eval $$(call PythonProduct,PyTopQuarkAnalysisTopTools,src/TopQuarkAnalysis/TopTools/python,src_TopQuarkAnalysis_TopTools_python,1,1,$(SCRAMSTORENAME_PYTHON),$(SCRAMSTORENAME_LIB),,))
else
$(eval $(call MultipleWarningMsg,PyTopQuarkAnalysisTopTools,src/TopQuarkAnalysis/TopTools/python))
endif
ALL_COMMONRULES += src_TopQuarkAnalysis_TopTools_python
src_TopQuarkAnalysis_TopTools_python_INIT_FUNC += $$(eval $$(call CommonProductRules,src_TopQuarkAnalysis_TopTools_python,src/TopQuarkAnalysis/TopTools/python,PYTHON))
