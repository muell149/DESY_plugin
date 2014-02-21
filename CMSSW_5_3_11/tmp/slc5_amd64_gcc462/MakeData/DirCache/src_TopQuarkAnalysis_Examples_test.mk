ifeq ($(strip $(runtestTqafExamples)),)
runtestTqafExamples_files := $(patsubst src/TopQuarkAnalysis/Examples/test/%,%,$(foreach file,runtestTqafExamples.cpp,$(eval xfile:=$(wildcard src/TopQuarkAnalysis/Examples/test/$(file)))$(if $(xfile),$(xfile),$(warning No such file exists: src/TopQuarkAnalysis/Examples/test/$(file). Please fix src/TopQuarkAnalysis/Examples/test/BuildFile.))))
runtestTqafExamples := self/src/TopQuarkAnalysis/Examples/test
runtestTqafExamples_TEST_RUNNER_CMD :=  runtestTqafExamples  /bin/bash TopQuarkAnalysis/Examples/test runtests.sh
runtestTqafExamples_BuildFile    := $(WORKINGDIR)/cache/bf/src/TopQuarkAnalysis/Examples/test/BuildFile
runtestTqafExamples_LOC_USE := self FWCore/Utilities
runtestTqafExamples_PACKAGE := self/src/TopQuarkAnalysis/Examples/test
ALL_PRODS += runtestTqafExamples
runtestTqafExamples_INIT_FUNC        += $$(eval $$(call Binary,runtestTqafExamples,src/TopQuarkAnalysis/Examples/test,src_TopQuarkAnalysis_Examples_test,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_TEST),test,$(SCRAMSTORENAME_LOGS)))
else
$(eval $(call MultipleWarningMsg,runtestTqafExamples,src/TopQuarkAnalysis/Examples/test))
endif
ALL_COMMONRULES += src_TopQuarkAnalysis_Examples_test
src_TopQuarkAnalysis_Examples_test_parent := TopQuarkAnalysis/Examples
src_TopQuarkAnalysis_Examples_test_INIT_FUNC += $$(eval $$(call CommonProductRules,src_TopQuarkAnalysis_Examples_test,src/TopQuarkAnalysis/Examples/test,TEST))
