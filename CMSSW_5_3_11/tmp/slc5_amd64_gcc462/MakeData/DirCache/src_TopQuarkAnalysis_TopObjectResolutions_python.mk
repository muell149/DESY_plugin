ifeq ($(strip $(PyTopQuarkAnalysisTopObjectResolutions)),)
PyTopQuarkAnalysisTopObjectResolutions := self/src/TopQuarkAnalysis/TopObjectResolutions/python
PyTopQuarkAnalysisTopObjectResolutions_files := $(patsubst src/TopQuarkAnalysis/TopObjectResolutions/python/%,%,$(wildcard $(foreach dir,src/TopQuarkAnalysis/TopObjectResolutions/python ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
PyTopQuarkAnalysisTopObjectResolutions_LOC_USE := self
ALL_PYTHON_DIRS += $(patsubst src/%,%,src/TopQuarkAnalysis/TopObjectResolutions/python)
ALL_PRODS += PyTopQuarkAnalysisTopObjectResolutions
src_TopQuarkAnalysis_TopObjectResolutions_python_parent := TopQuarkAnalysis/TopObjectResolutions
PyTopQuarkAnalysisTopObjectResolutions_INIT_FUNC        += $$(eval $$(call PythonProduct,PyTopQuarkAnalysisTopObjectResolutions,src/TopQuarkAnalysis/TopObjectResolutions/python,src_TopQuarkAnalysis_TopObjectResolutions_python,1,1,$(SCRAMSTORENAME_PYTHON),$(SCRAMSTORENAME_LIB),,))
else
$(eval $(call MultipleWarningMsg,PyTopQuarkAnalysisTopObjectResolutions,src/TopQuarkAnalysis/TopObjectResolutions/python))
endif
ALL_COMMONRULES += src_TopQuarkAnalysis_TopObjectResolutions_python
src_TopQuarkAnalysis_TopObjectResolutions_python_INIT_FUNC += $$(eval $$(call CommonProductRules,src_TopQuarkAnalysis_TopObjectResolutions_python,src/TopQuarkAnalysis/TopObjectResolutions/python,PYTHON))
