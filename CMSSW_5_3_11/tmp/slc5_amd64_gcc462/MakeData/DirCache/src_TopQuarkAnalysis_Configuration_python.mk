ifeq ($(strip $(PyTopQuarkAnalysisConfiguration)),)
PyTopQuarkAnalysisConfiguration := self/src/TopQuarkAnalysis/Configuration/python
PyTopQuarkAnalysisConfiguration_files := $(patsubst src/TopQuarkAnalysis/Configuration/python/%,%,$(wildcard $(foreach dir,src/TopQuarkAnalysis/Configuration/python ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
PyTopQuarkAnalysisConfiguration_LOC_USE := self
ALL_PYTHON_DIRS += $(patsubst src/%,%,src/TopQuarkAnalysis/Configuration/python)
ALL_PRODS += PyTopQuarkAnalysisConfiguration
src_TopQuarkAnalysis_Configuration_python_parent := TopQuarkAnalysis/Configuration
PyTopQuarkAnalysisConfiguration_INIT_FUNC        += $$(eval $$(call PythonProduct,PyTopQuarkAnalysisConfiguration,src/TopQuarkAnalysis/Configuration/python,src_TopQuarkAnalysis_Configuration_python,1,1,$(SCRAMSTORENAME_PYTHON),$(SCRAMSTORENAME_LIB),,))
else
$(eval $(call MultipleWarningMsg,PyTopQuarkAnalysisConfiguration,src/TopQuarkAnalysis/Configuration/python))
endif
ALL_COMMONRULES += src_TopQuarkAnalysis_Configuration_python
src_TopQuarkAnalysis_Configuration_python_INIT_FUNC += $$(eval $$(call CommonProductRules,src_TopQuarkAnalysis_Configuration_python,src/TopQuarkAnalysis/Configuration/python,PYTHON))
