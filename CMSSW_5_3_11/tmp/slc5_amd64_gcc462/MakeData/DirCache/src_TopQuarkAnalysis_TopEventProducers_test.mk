ifeq ($(strip $(runtestTqafTopEventProducers)),)
runtestTqafTopEventProducers_files := $(patsubst src/TopQuarkAnalysis/TopEventProducers/test/%,%,$(foreach file,runtestTqafTopEventProducers.cpp,$(eval xfile:=$(wildcard src/TopQuarkAnalysis/TopEventProducers/test/$(file)))$(if $(xfile),$(xfile),$(warning No such file exists: src/TopQuarkAnalysis/TopEventProducers/test/$(file). Please fix src/TopQuarkAnalysis/TopEventProducers/test/BuildFile.))))
runtestTqafTopEventProducers := self/src/TopQuarkAnalysis/TopEventProducers/test
runtestTqafTopEventProducers_TEST_RUNNER_CMD :=  runtestTqafTopEventProducers  /bin/bash TopQuarkAnalysis/TopEventProducers/test runtests.sh
runtestTqafTopEventProducers_BuildFile    := $(WORKINGDIR)/cache/bf/src/TopQuarkAnalysis/TopEventProducers/test/BuildFile
runtestTqafTopEventProducers_LOC_USE := self FWCore/Utilities
runtestTqafTopEventProducers_PACKAGE := self/src/TopQuarkAnalysis/TopEventProducers/test
ALL_PRODS += runtestTqafTopEventProducers
runtestTqafTopEventProducers_INIT_FUNC        += $$(eval $$(call Binary,runtestTqafTopEventProducers,src/TopQuarkAnalysis/TopEventProducers/test,src_TopQuarkAnalysis_TopEventProducers_test,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_TEST),test,$(SCRAMSTORENAME_LOGS)))
else
$(eval $(call MultipleWarningMsg,runtestTqafTopEventProducers,src/TopQuarkAnalysis/TopEventProducers/test))
endif
ALL_COMMONRULES += src_TopQuarkAnalysis_TopEventProducers_test
src_TopQuarkAnalysis_TopEventProducers_test_parent := TopQuarkAnalysis/TopEventProducers
src_TopQuarkAnalysis_TopEventProducers_test_INIT_FUNC += $$(eval $$(call CommonProductRules,src_TopQuarkAnalysis_TopEventProducers_test,src/TopQuarkAnalysis/TopEventProducers/test,TEST))
