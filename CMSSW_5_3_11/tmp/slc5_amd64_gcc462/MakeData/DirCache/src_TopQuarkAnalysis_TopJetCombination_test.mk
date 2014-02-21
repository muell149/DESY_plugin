ifeq ($(strip $(runtestTqafTopJetCombination)),)
runtestTqafTopJetCombination_files := $(patsubst src/TopQuarkAnalysis/TopJetCombination/test/%,%,$(foreach file,runtestTqafTopJetCombination.cpp,$(eval xfile:=$(wildcard src/TopQuarkAnalysis/TopJetCombination/test/$(file)))$(if $(xfile),$(xfile),$(warning No such file exists: src/TopQuarkAnalysis/TopJetCombination/test/$(file). Please fix src/TopQuarkAnalysis/TopJetCombination/test/BuildFile.))))
runtestTqafTopJetCombination := self/src/TopQuarkAnalysis/TopJetCombination/test
runtestTqafTopJetCombination_TEST_RUNNER_CMD :=  runtestTqafTopJetCombination  /bin/bash TopQuarkAnalysis/TopJetCombination/test runtests.sh
runtestTqafTopJetCombination_BuildFile    := $(WORKINGDIR)/cache/bf/src/TopQuarkAnalysis/TopJetCombination/test/BuildFile
runtestTqafTopJetCombination_LOC_USE := self FWCore/Utilities
runtestTqafTopJetCombination_PACKAGE := self/src/TopQuarkAnalysis/TopJetCombination/test
ALL_PRODS += runtestTqafTopJetCombination
runtestTqafTopJetCombination_INIT_FUNC        += $$(eval $$(call Binary,runtestTqafTopJetCombination,src/TopQuarkAnalysis/TopJetCombination/test,src_TopQuarkAnalysis_TopJetCombination_test,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_TEST),test,$(SCRAMSTORENAME_LOGS)))
else
$(eval $(call MultipleWarningMsg,runtestTqafTopJetCombination,src/TopQuarkAnalysis/TopJetCombination/test))
endif
ALL_COMMONRULES += src_TopQuarkAnalysis_TopJetCombination_test
src_TopQuarkAnalysis_TopJetCombination_test_parent := TopQuarkAnalysis/TopJetCombination
src_TopQuarkAnalysis_TopJetCombination_test_INIT_FUNC += $$(eval $$(call CommonProductRules,src_TopQuarkAnalysis_TopJetCombination_test,src/TopQuarkAnalysis/TopJetCombination/test,TEST))
