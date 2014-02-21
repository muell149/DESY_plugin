ifeq ($(strip $(PyTopQuarkAnalysisTopEventProducers)),)
PyTopQuarkAnalysisTopEventProducers := self/src/TopQuarkAnalysis/TopEventProducers/python
PyTopQuarkAnalysisTopEventProducers_files := $(patsubst src/TopQuarkAnalysis/TopEventProducers/python/%,%,$(wildcard $(foreach dir,src/TopQuarkAnalysis/TopEventProducers/python ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
PyTopQuarkAnalysisTopEventProducers_LOC_USE := self
ALL_PYTHON_DIRS += $(patsubst src/%,%,src/TopQuarkAnalysis/TopEventProducers/python)
ALL_PRODS += PyTopQuarkAnalysisTopEventProducers
src_TopQuarkAnalysis_TopEventProducers_python_parent := TopQuarkAnalysis/TopEventProducers
PyTopQuarkAnalysisTopEventProducers_INIT_FUNC        += $$(eval $$(call PythonProduct,PyTopQuarkAnalysisTopEventProducers,src/TopQuarkAnalysis/TopEventProducers/python,src_TopQuarkAnalysis_TopEventProducers_python,1,1,$(SCRAMSTORENAME_PYTHON),$(SCRAMSTORENAME_LIB),,))
else
$(eval $(call MultipleWarningMsg,PyTopQuarkAnalysisTopEventProducers,src/TopQuarkAnalysis/TopEventProducers/python))
endif
ALL_COMMONRULES += src_TopQuarkAnalysis_TopEventProducers_python
src_TopQuarkAnalysis_TopEventProducers_python_INIT_FUNC += $$(eval $$(call CommonProductRules,src_TopQuarkAnalysis_TopEventProducers_python,src/TopQuarkAnalysis/TopEventProducers/python,PYTHON))
