ifeq ($(strip $(PyTopAnalysisConfiguration)),)
PyTopAnalysisConfiguration := self/src/TopAnalysis/Configuration/python
PyTopAnalysisConfiguration_files := $(patsubst src/TopAnalysis/Configuration/python/%,%,$(wildcard $(foreach dir,src/TopAnalysis/Configuration/python ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
PyTopAnalysisConfiguration_LOC_USE := self
ALL_PYTHON_DIRS += $(patsubst src/%,%,src/TopAnalysis/Configuration/python)
ALL_PRODS += PyTopAnalysisConfiguration
src_TopAnalysis_Configuration_python_parent := TopAnalysis/Configuration
PyTopAnalysisConfiguration_INIT_FUNC        += $$(eval $$(call PythonProduct,PyTopAnalysisConfiguration,src/TopAnalysis/Configuration/python,src_TopAnalysis_Configuration_python,1,1,$(SCRAMSTORENAME_PYTHON),$(SCRAMSTORENAME_LIB),,))
else
$(eval $(call MultipleWarningMsg,PyTopAnalysisConfiguration,src/TopAnalysis/Configuration/python))
endif
ALL_COMMONRULES += src_TopAnalysis_Configuration_python
src_TopAnalysis_Configuration_python_INIT_FUNC += $$(eval $$(call CommonProductRules,src_TopAnalysis_Configuration_python,src/TopAnalysis/Configuration/python,PYTHON))
