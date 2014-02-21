ifeq ($(strip $(runtestTqafTopEventSelection)),)
runtestTqafTopEventSelection_files := $(patsubst src/TopQuarkAnalysis/TopEventSelection/test/%,%,$(foreach file,runtestTqafTopEventSelection.cpp,$(eval xfile:=$(wildcard src/TopQuarkAnalysis/TopEventSelection/test/$(file)))$(if $(xfile),$(xfile),$(warning No such file exists: src/TopQuarkAnalysis/TopEventSelection/test/$(file). Please fix src/TopQuarkAnalysis/TopEventSelection/test/BuildFile.))))
runtestTqafTopEventSelection := self/src/TopQuarkAnalysis/TopEventSelection/test
runtestTqafTopEventSelection_TEST_RUNNER_CMD :=  runtestTqafTopEventSelection  /bin/bash TopQuarkAnalysis/TopEventSelection/test runtests.sh
runtestTqafTopEventSelection_BuildFile    := $(WORKINGDIR)/cache/bf/src/TopQuarkAnalysis/TopEventSelection/test/BuildFile
runtestTqafTopEventSelection_LOC_USE := self FWCore/Utilities
runtestTqafTopEventSelection_PACKAGE := self/src/TopQuarkAnalysis/TopEventSelection/test
ALL_PRODS += runtestTqafTopEventSelection
runtestTqafTopEventSelection_INIT_FUNC        += $$(eval $$(call Binary,runtestTqafTopEventSelection,src/TopQuarkAnalysis/TopEventSelection/test,src_TopQuarkAnalysis_TopEventSelection_test,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_TEST),test,$(SCRAMSTORENAME_LOGS)))
else
$(eval $(call MultipleWarningMsg,runtestTqafTopEventSelection,src/TopQuarkAnalysis/TopEventSelection/test))
endif
ALL_COMMONRULES += src_TopQuarkAnalysis_TopEventSelection_test
src_TopQuarkAnalysis_TopEventSelection_test_parent := TopQuarkAnalysis/TopEventSelection
src_TopQuarkAnalysis_TopEventSelection_test_INIT_FUNC += $$(eval $$(call CommonProductRules,src_TopQuarkAnalysis_TopEventSelection_test,src/TopQuarkAnalysis/TopEventSelection/test,TEST))
