ifeq ($(strip $(PyCMGToolsExternal)),)
PyCMGToolsExternal := self/src/CMGTools/External/python
PyCMGToolsExternal_files := $(patsubst src/CMGTools/External/python/%,%,$(wildcard $(foreach dir,src/CMGTools/External/python ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
PyCMGToolsExternal_LOC_USE := self
ALL_PYTHON_DIRS += $(patsubst src/%,%,src/CMGTools/External/python)
ALL_PRODS += PyCMGToolsExternal
src_CMGTools_External_python_parent := CMGTools/External
PyCMGToolsExternal_INIT_FUNC        += $$(eval $$(call PythonProduct,PyCMGToolsExternal,src/CMGTools/External/python,src_CMGTools_External_python,1,1,$(SCRAMSTORENAME_PYTHON),$(SCRAMSTORENAME_LIB),,))
else
$(eval $(call MultipleWarningMsg,PyCMGToolsExternal,src/CMGTools/External/python))
endif
ALL_COMMONRULES += src_CMGTools_External_python
src_CMGTools_External_python_INIT_FUNC += $$(eval $$(call CommonProductRules,src_CMGTools_External_python,src/CMGTools/External/python,PYTHON))
