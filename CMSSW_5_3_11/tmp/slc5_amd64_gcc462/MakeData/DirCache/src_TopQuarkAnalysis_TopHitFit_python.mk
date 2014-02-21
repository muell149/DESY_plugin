ifeq ($(strip $(PyTopQuarkAnalysisTopHitFit)),)
PyTopQuarkAnalysisTopHitFit := self/src/TopQuarkAnalysis/TopHitFit/python
PyTopQuarkAnalysisTopHitFit_files := $(patsubst src/TopQuarkAnalysis/TopHitFit/python/%,%,$(wildcard $(foreach dir,src/TopQuarkAnalysis/TopHitFit/python ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
PyTopQuarkAnalysisTopHitFit_LOC_USE := self
ALL_PYTHON_DIRS += $(patsubst src/%,%,src/TopQuarkAnalysis/TopHitFit/python)
ALL_PRODS += PyTopQuarkAnalysisTopHitFit
src_TopQuarkAnalysis_TopHitFit_python_parent := TopQuarkAnalysis/TopHitFit
PyTopQuarkAnalysisTopHitFit_INIT_FUNC        += $$(eval $$(call PythonProduct,PyTopQuarkAnalysisTopHitFit,src/TopQuarkAnalysis/TopHitFit/python,src_TopQuarkAnalysis_TopHitFit_python,1,1,$(SCRAMSTORENAME_PYTHON),$(SCRAMSTORENAME_LIB),,))
else
$(eval $(call MultipleWarningMsg,PyTopQuarkAnalysisTopHitFit,src/TopQuarkAnalysis/TopHitFit/python))
endif
ALL_COMMONRULES += src_TopQuarkAnalysis_TopHitFit_python
src_TopQuarkAnalysis_TopHitFit_python_INIT_FUNC += $$(eval $$(call CommonProductRules,src_TopQuarkAnalysis_TopHitFit_python,src/TopQuarkAnalysis/TopHitFit/python,PYTHON))
