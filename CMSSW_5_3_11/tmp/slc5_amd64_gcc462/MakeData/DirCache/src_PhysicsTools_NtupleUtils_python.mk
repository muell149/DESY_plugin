ifeq ($(strip $(PyPhysicsToolsNtupleUtils)),)
PyPhysicsToolsNtupleUtils := self/src/PhysicsTools/NtupleUtils/python
PyPhysicsToolsNtupleUtils_files := $(patsubst src/PhysicsTools/NtupleUtils/python/%,%,$(wildcard $(foreach dir,src/PhysicsTools/NtupleUtils/python ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
PyPhysicsToolsNtupleUtils_LOC_USE := self
ALL_PYTHON_DIRS += $(patsubst src/%,%,src/PhysicsTools/NtupleUtils/python)
ALL_PRODS += PyPhysicsToolsNtupleUtils
src_PhysicsTools_NtupleUtils_python_parent := PhysicsTools/NtupleUtils
PyPhysicsToolsNtupleUtils_INIT_FUNC        += $$(eval $$(call PythonProduct,PyPhysicsToolsNtupleUtils,src/PhysicsTools/NtupleUtils/python,src_PhysicsTools_NtupleUtils_python,1,1,$(SCRAMSTORENAME_PYTHON),$(SCRAMSTORENAME_LIB),,))
else
$(eval $(call MultipleWarningMsg,PyPhysicsToolsNtupleUtils,src/PhysicsTools/NtupleUtils/python))
endif
ALL_COMMONRULES += src_PhysicsTools_NtupleUtils_python
src_PhysicsTools_NtupleUtils_python_INIT_FUNC += $$(eval $$(call CommonProductRules,src_PhysicsTools_NtupleUtils_python,src/PhysicsTools/NtupleUtils/python,PYTHON))
