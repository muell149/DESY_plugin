ifeq ($(strip $(PyTopAnalysisHiggsUtils)),)
PyTopAnalysisHiggsUtils := self/src/TopAnalysis/HiggsUtils/python
PyTopAnalysisHiggsUtils_files := $(patsubst src/TopAnalysis/HiggsUtils/python/%,%,$(wildcard $(foreach dir,src/TopAnalysis/HiggsUtils/python ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
PyTopAnalysisHiggsUtils_LOC_USE := self
ALL_PYTHON_DIRS += $(patsubst src/%,%,src/TopAnalysis/HiggsUtils/python)
ALL_PRODS += PyTopAnalysisHiggsUtils
src_TopAnalysis_HiggsUtils_python_parent := TopAnalysis/HiggsUtils
PyTopAnalysisHiggsUtils_INIT_FUNC        += $$(eval $$(call PythonProduct,PyTopAnalysisHiggsUtils,src/TopAnalysis/HiggsUtils/python,src_TopAnalysis_HiggsUtils_python,1,1,$(SCRAMSTORENAME_PYTHON),$(SCRAMSTORENAME_LIB),,))
else
$(eval $(call MultipleWarningMsg,PyTopAnalysisHiggsUtils,src/TopAnalysis/HiggsUtils/python))
endif
ALL_COMMONRULES += src_TopAnalysis_HiggsUtils_python
src_TopAnalysis_HiggsUtils_python_INIT_FUNC += $$(eval $$(call CommonProductRules,src_TopAnalysis_HiggsUtils_python,src/TopAnalysis/HiggsUtils/python,PYTHON))
