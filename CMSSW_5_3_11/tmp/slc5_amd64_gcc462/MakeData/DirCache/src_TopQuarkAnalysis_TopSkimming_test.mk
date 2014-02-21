ifeq ($(strip $(runtestTqafTopSkimming)),)
runtestTqafTopSkimming_files := $(patsubst src/TopQuarkAnalysis/TopSkimming/test/%,%,$(foreach file,runtestTqafTopSkimming.cpp,$(eval xfile:=$(wildcard src/TopQuarkAnalysis/TopSkimming/test/$(file)))$(if $(xfile),$(xfile),$(warning No such file exists: src/TopQuarkAnalysis/TopSkimming/test/$(file). Please fix src/TopQuarkAnalysis/TopSkimming/test/BuildFile.))))
runtestTqafTopSkimming := self/src/TopQuarkAnalysis/TopSkimming/test
runtestTqafTopSkimming_TEST_RUNNER_CMD :=  runtestTqafTopSkimming  /bin/bash TopQuarkAnalysis/TopSkimming/test runtests.sh
runtestTqafTopSkimming_BuildFile    := $(WORKINGDIR)/cache/bf/src/TopQuarkAnalysis/TopSkimming/test/BuildFile
runtestTqafTopSkimming_LOC_USE := self FWCore/Utilities
runtestTqafTopSkimming_PACKAGE := self/src/TopQuarkAnalysis/TopSkimming/test
ALL_PRODS += runtestTqafTopSkimming
runtestTqafTopSkimming_INIT_FUNC        += $$(eval $$(call Binary,runtestTqafTopSkimming,src/TopQuarkAnalysis/TopSkimming/test,src_TopQuarkAnalysis_TopSkimming_test,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_TEST),test,$(SCRAMSTORENAME_LOGS)))
else
$(eval $(call MultipleWarningMsg,runtestTqafTopSkimming,src/TopQuarkAnalysis/TopSkimming/test))
endif
ALL_COMMONRULES += src_TopQuarkAnalysis_TopSkimming_test
src_TopQuarkAnalysis_TopSkimming_test_parent := TopQuarkAnalysis/TopSkimming
src_TopQuarkAnalysis_TopSkimming_test_INIT_FUNC += $$(eval $$(call CommonProductRules,src_TopQuarkAnalysis_TopSkimming_test,src/TopQuarkAnalysis/TopSkimming/test,TEST))
