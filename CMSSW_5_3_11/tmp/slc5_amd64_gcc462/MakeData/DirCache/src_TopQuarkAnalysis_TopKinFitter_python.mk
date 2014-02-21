ifeq ($(strip $(PyTopQuarkAnalysisTopKinFitter)),)
PyTopQuarkAnalysisTopKinFitter := self/src/TopQuarkAnalysis/TopKinFitter/python
PyTopQuarkAnalysisTopKinFitter_files := $(patsubst src/TopQuarkAnalysis/TopKinFitter/python/%,%,$(wildcard $(foreach dir,src/TopQuarkAnalysis/TopKinFitter/python ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
PyTopQuarkAnalysisTopKinFitter_LOC_USE := self
ALL_PYTHON_DIRS += $(patsubst src/%,%,src/TopQuarkAnalysis/TopKinFitter/python)
ALL_PRODS += PyTopQuarkAnalysisTopKinFitter
src_TopQuarkAnalysis_TopKinFitter_python_parent := TopQuarkAnalysis/TopKinFitter
PyTopQuarkAnalysisTopKinFitter_INIT_FUNC        += $$(eval $$(call PythonProduct,PyTopQuarkAnalysisTopKinFitter,src/TopQuarkAnalysis/TopKinFitter/python,src_TopQuarkAnalysis_TopKinFitter_python,1,1,$(SCRAMSTORENAME_PYTHON),$(SCRAMSTORENAME_LIB),,))
else
$(eval $(call MultipleWarningMsg,PyTopQuarkAnalysisTopKinFitter,src/TopQuarkAnalysis/TopKinFitter/python))
endif
ALL_COMMONRULES += src_TopQuarkAnalysis_TopKinFitter_python
src_TopQuarkAnalysis_TopKinFitter_python_INIT_FUNC += $$(eval $$(call CommonProductRules,src_TopQuarkAnalysis_TopKinFitter_python,src/TopQuarkAnalysis/TopKinFitter/python,PYTHON))
