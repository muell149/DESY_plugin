ifeq ($(strip $(runtestTqafTopKinFitter)),)
runtestTqafTopKinFitter_files := $(patsubst src/TopQuarkAnalysis/TopKinFitter/test/%,%,$(foreach file,runtestTqafTopKinFitter.cpp,$(eval xfile:=$(wildcard src/TopQuarkAnalysis/TopKinFitter/test/$(file)))$(if $(xfile),$(xfile),$(warning No such file exists: src/TopQuarkAnalysis/TopKinFitter/test/$(file). Please fix src/TopQuarkAnalysis/TopKinFitter/test/BuildFile.))))
runtestTqafTopKinFitter := self/src/TopQuarkAnalysis/TopKinFitter/test
runtestTqafTopKinFitter_TEST_RUNNER_CMD :=  runtestTqafTopKinFitter  /bin/bash TopQuarkAnalysis/TopKinFitter/test runtests.sh
runtestTqafTopKinFitter_BuildFile    := $(WORKINGDIR)/cache/bf/src/TopQuarkAnalysis/TopKinFitter/test/BuildFile
runtestTqafTopKinFitter_LOC_USE := self FWCore/Utilities
runtestTqafTopKinFitter_PACKAGE := self/src/TopQuarkAnalysis/TopKinFitter/test
ALL_PRODS += runtestTqafTopKinFitter
runtestTqafTopKinFitter_INIT_FUNC        += $$(eval $$(call Binary,runtestTqafTopKinFitter,src/TopQuarkAnalysis/TopKinFitter/test,src_TopQuarkAnalysis_TopKinFitter_test,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_TEST),test,$(SCRAMSTORENAME_LOGS)))
else
$(eval $(call MultipleWarningMsg,runtestTqafTopKinFitter,src/TopQuarkAnalysis/TopKinFitter/test))
endif
ALL_COMMONRULES += src_TopQuarkAnalysis_TopKinFitter_test
src_TopQuarkAnalysis_TopKinFitter_test_parent := TopQuarkAnalysis/TopKinFitter
src_TopQuarkAnalysis_TopKinFitter_test_INIT_FUNC += $$(eval $$(call CommonProductRules,src_TopQuarkAnalysis_TopKinFitter_test,src/TopQuarkAnalysis/TopKinFitter/test,TEST))
