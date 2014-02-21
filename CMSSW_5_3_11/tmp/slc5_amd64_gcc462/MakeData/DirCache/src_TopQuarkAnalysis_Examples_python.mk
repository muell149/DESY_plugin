ifeq ($(strip $(PyTopQuarkAnalysisExamples)),)
PyTopQuarkAnalysisExamples := self/src/TopQuarkAnalysis/Examples/python
PyTopQuarkAnalysisExamples_files := $(patsubst src/TopQuarkAnalysis/Examples/python/%,%,$(wildcard $(foreach dir,src/TopQuarkAnalysis/Examples/python ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
PyTopQuarkAnalysisExamples_LOC_USE := self
ALL_PYTHON_DIRS += $(patsubst src/%,%,src/TopQuarkAnalysis/Examples/python)
ALL_PRODS += PyTopQuarkAnalysisExamples
src_TopQuarkAnalysis_Examples_python_parent := TopQuarkAnalysis/Examples
PyTopQuarkAnalysisExamples_INIT_FUNC        += $$(eval $$(call PythonProduct,PyTopQuarkAnalysisExamples,src/TopQuarkAnalysis/Examples/python,src_TopQuarkAnalysis_Examples_python,1,1,$(SCRAMSTORENAME_PYTHON),$(SCRAMSTORENAME_LIB),,))
else
$(eval $(call MultipleWarningMsg,PyTopQuarkAnalysisExamples,src/TopQuarkAnalysis/Examples/python))
endif
ALL_COMMONRULES += src_TopQuarkAnalysis_Examples_python
src_TopQuarkAnalysis_Examples_python_INIT_FUNC += $$(eval $$(call CommonProductRules,src_TopQuarkAnalysis_Examples_python,src/TopQuarkAnalysis/Examples/python,PYTHON))
