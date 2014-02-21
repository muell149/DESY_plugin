ifeq ($(strip $(PyElectroWeakAnalysisUtilities)),)
PyElectroWeakAnalysisUtilities := self/src/ElectroWeakAnalysis/Utilities/python
PyElectroWeakAnalysisUtilities_files := $(patsubst src/ElectroWeakAnalysis/Utilities/python/%,%,$(wildcard $(foreach dir,src/ElectroWeakAnalysis/Utilities/python ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
PyElectroWeakAnalysisUtilities_LOC_USE := self
ALL_PYTHON_DIRS += $(patsubst src/%,%,src/ElectroWeakAnalysis/Utilities/python)
ALL_PRODS += PyElectroWeakAnalysisUtilities
src_ElectroWeakAnalysis_Utilities_python_parent := ElectroWeakAnalysis/Utilities
PyElectroWeakAnalysisUtilities_INIT_FUNC        += $$(eval $$(call PythonProduct,PyElectroWeakAnalysisUtilities,src/ElectroWeakAnalysis/Utilities/python,src_ElectroWeakAnalysis_Utilities_python,1,1,$(SCRAMSTORENAME_PYTHON),$(SCRAMSTORENAME_LIB),,))
else
$(eval $(call MultipleWarningMsg,PyElectroWeakAnalysisUtilities,src/ElectroWeakAnalysis/Utilities/python))
endif
ALL_COMMONRULES += src_ElectroWeakAnalysis_Utilities_python
src_ElectroWeakAnalysis_Utilities_python_INIT_FUNC += $$(eval $$(call CommonProductRules,src_ElectroWeakAnalysis_Utilities_python,src/ElectroWeakAnalysis/Utilities/python,PYTHON))
