ifeq ($(strip $(PyTopQuarkAnalysisTopJetCombination)),)
PyTopQuarkAnalysisTopJetCombination := self/src/TopQuarkAnalysis/TopJetCombination/python
PyTopQuarkAnalysisTopJetCombination_files := $(patsubst src/TopQuarkAnalysis/TopJetCombination/python/%,%,$(wildcard $(foreach dir,src/TopQuarkAnalysis/TopJetCombination/python ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
PyTopQuarkAnalysisTopJetCombination_LOC_USE := self
ALL_PYTHON_DIRS += $(patsubst src/%,%,src/TopQuarkAnalysis/TopJetCombination/python)
ALL_PRODS += PyTopQuarkAnalysisTopJetCombination
src_TopQuarkAnalysis_TopJetCombination_python_parent := TopQuarkAnalysis/TopJetCombination
PyTopQuarkAnalysisTopJetCombination_INIT_FUNC        += $$(eval $$(call PythonProduct,PyTopQuarkAnalysisTopJetCombination,src/TopQuarkAnalysis/TopJetCombination/python,src_TopQuarkAnalysis_TopJetCombination_python,1,1,$(SCRAMSTORENAME_PYTHON),$(SCRAMSTORENAME_LIB),,))
else
$(eval $(call MultipleWarningMsg,PyTopQuarkAnalysisTopJetCombination,src/TopQuarkAnalysis/TopJetCombination/python))
endif
ALL_COMMONRULES += src_TopQuarkAnalysis_TopJetCombination_python
src_TopQuarkAnalysis_TopJetCombination_python_INIT_FUNC += $$(eval $$(call CommonProductRules,src_TopQuarkAnalysis_TopJetCombination_python,src/TopQuarkAnalysis/TopJetCombination/python,PYTHON))
