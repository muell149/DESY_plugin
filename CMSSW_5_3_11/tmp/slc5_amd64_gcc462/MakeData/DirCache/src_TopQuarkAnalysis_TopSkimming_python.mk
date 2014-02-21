ifeq ($(strip $(PyTopQuarkAnalysisTopSkimming)),)
PyTopQuarkAnalysisTopSkimming := self/src/TopQuarkAnalysis/TopSkimming/python
PyTopQuarkAnalysisTopSkimming_files := $(patsubst src/TopQuarkAnalysis/TopSkimming/python/%,%,$(wildcard $(foreach dir,src/TopQuarkAnalysis/TopSkimming/python ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
PyTopQuarkAnalysisTopSkimming_LOC_USE := self
ALL_PYTHON_DIRS += $(patsubst src/%,%,src/TopQuarkAnalysis/TopSkimming/python)
ALL_PRODS += PyTopQuarkAnalysisTopSkimming
src_TopQuarkAnalysis_TopSkimming_python_parent := TopQuarkAnalysis/TopSkimming
PyTopQuarkAnalysisTopSkimming_INIT_FUNC        += $$(eval $$(call PythonProduct,PyTopQuarkAnalysisTopSkimming,src/TopQuarkAnalysis/TopSkimming/python,src_TopQuarkAnalysis_TopSkimming_python,1,1,$(SCRAMSTORENAME_PYTHON),$(SCRAMSTORENAME_LIB),,))
else
$(eval $(call MultipleWarningMsg,PyTopQuarkAnalysisTopSkimming,src/TopQuarkAnalysis/TopSkimming/python))
endif
ALL_COMMONRULES += src_TopQuarkAnalysis_TopSkimming_python
src_TopQuarkAnalysis_TopSkimming_python_INIT_FUNC += $$(eval $$(call CommonProductRules,src_TopQuarkAnalysis_TopSkimming_python,src/TopQuarkAnalysis/TopSkimming/python,PYTHON))
