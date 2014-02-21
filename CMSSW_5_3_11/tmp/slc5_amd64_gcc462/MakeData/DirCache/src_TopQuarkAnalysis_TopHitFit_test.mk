ifeq ($(strip $(runtestTqafTopHitFit)),)
runtestTqafTopHitFit_files := $(patsubst src/TopQuarkAnalysis/TopHitFit/test/%,%,$(foreach file,runtestTqafTopHitFit.cpp,$(eval xfile:=$(wildcard src/TopQuarkAnalysis/TopHitFit/test/$(file)))$(if $(xfile),$(xfile),$(warning No such file exists: src/TopQuarkAnalysis/TopHitFit/test/$(file). Please fix src/TopQuarkAnalysis/TopHitFit/test/BuildFile.))))
runtestTqafTopHitFit := self/src/TopQuarkAnalysis/TopHitFit/test
runtestTqafTopHitFit_TEST_RUNNER_CMD :=  runtestTqafTopHitFit  /bin/bash TopQuarkAnalysis/TopHitFit/test runtests.sh
runtestTqafTopHitFit_BuildFile    := $(WORKINGDIR)/cache/bf/src/TopQuarkAnalysis/TopHitFit/test/BuildFile
runtestTqafTopHitFit_LOC_USE := self FWCore/Utilities
runtestTqafTopHitFit_PACKAGE := self/src/TopQuarkAnalysis/TopHitFit/test
ALL_PRODS += runtestTqafTopHitFit
runtestTqafTopHitFit_INIT_FUNC        += $$(eval $$(call Binary,runtestTqafTopHitFit,src/TopQuarkAnalysis/TopHitFit/test,src_TopQuarkAnalysis_TopHitFit_test,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_TEST),test,$(SCRAMSTORENAME_LOGS)))
else
$(eval $(call MultipleWarningMsg,runtestTqafTopHitFit,src/TopQuarkAnalysis/TopHitFit/test))
endif
ALL_COMMONRULES += src_TopQuarkAnalysis_TopHitFit_test
src_TopQuarkAnalysis_TopHitFit_test_parent := TopQuarkAnalysis/TopHitFit
src_TopQuarkAnalysis_TopHitFit_test_INIT_FUNC += $$(eval $$(call CommonProductRules,src_TopQuarkAnalysis_TopHitFit_test,src/TopQuarkAnalysis/TopHitFit/test,TEST))
