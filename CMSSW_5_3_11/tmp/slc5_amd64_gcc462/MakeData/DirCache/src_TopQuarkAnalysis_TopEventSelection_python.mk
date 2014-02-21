ifeq ($(strip $(PyTopQuarkAnalysisTopEventSelection)),)
PyTopQuarkAnalysisTopEventSelection := self/src/TopQuarkAnalysis/TopEventSelection/python
PyTopQuarkAnalysisTopEventSelection_files := $(patsubst src/TopQuarkAnalysis/TopEventSelection/python/%,%,$(wildcard $(foreach dir,src/TopQuarkAnalysis/TopEventSelection/python ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
PyTopQuarkAnalysisTopEventSelection_LOC_USE := self
ALL_PYTHON_DIRS += $(patsubst src/%,%,src/TopQuarkAnalysis/TopEventSelection/python)
ALL_PRODS += PyTopQuarkAnalysisTopEventSelection
src_TopQuarkAnalysis_TopEventSelection_python_parent := TopQuarkAnalysis/TopEventSelection
PyTopQuarkAnalysisTopEventSelection_INIT_FUNC        += $$(eval $$(call PythonProduct,PyTopQuarkAnalysisTopEventSelection,src/TopQuarkAnalysis/TopEventSelection/python,src_TopQuarkAnalysis_TopEventSelection_python,1,1,$(SCRAMSTORENAME_PYTHON),$(SCRAMSTORENAME_LIB),,))
else
$(eval $(call MultipleWarningMsg,PyTopQuarkAnalysisTopEventSelection,src/TopQuarkAnalysis/TopEventSelection/python))
endif
ALL_COMMONRULES += src_TopQuarkAnalysis_TopEventSelection_python
src_TopQuarkAnalysis_TopEventSelection_python_INIT_FUNC += $$(eval $$(call CommonProductRules,src_TopQuarkAnalysis_TopEventSelection_python,src/TopQuarkAnalysis/TopEventSelection/python,PYTHON))
