ifeq ($(strip $(PyCommonToolsParticleFlow)),)
PyCommonToolsParticleFlow := self/src/CommonTools/ParticleFlow/python
PyCommonToolsParticleFlow_files := $(patsubst src/CommonTools/ParticleFlow/python/%,%,$(wildcard $(foreach dir,src/CommonTools/ParticleFlow/python ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
PyCommonToolsParticleFlow_LOC_USE := self
ALL_PYTHON_DIRS += $(patsubst src/%,%,src/CommonTools/ParticleFlow/python)
ALL_PRODS += PyCommonToolsParticleFlow
src_CommonTools_ParticleFlow_python_parent := CommonTools/ParticleFlow
PyCommonToolsParticleFlow_INIT_FUNC        += $$(eval $$(call PythonProduct,PyCommonToolsParticleFlow,src/CommonTools/ParticleFlow/python,src_CommonTools_ParticleFlow_python,1,1,$(SCRAMSTORENAME_PYTHON),$(SCRAMSTORENAME_LIB),,))
else
$(eval $(call MultipleWarningMsg,PyCommonToolsParticleFlow,src/CommonTools/ParticleFlow/python))
endif
ALL_COMMONRULES += src_CommonTools_ParticleFlow_python
src_CommonTools_ParticleFlow_python_INIT_FUNC += $$(eval $$(call CommonProductRules,src_CommonTools_ParticleFlow_python,src/CommonTools/ParticleFlow/python,PYTHON))
