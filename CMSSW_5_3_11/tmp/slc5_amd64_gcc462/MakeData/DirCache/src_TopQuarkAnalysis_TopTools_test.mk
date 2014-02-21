ifeq ($(strip $(runtestTqafTopTools)),)
runtestTqafTopTools_files := $(patsubst src/TopQuarkAnalysis/TopTools/test/%,%,$(foreach file,runtestTqafTopTools.cpp,$(eval xfile:=$(wildcard src/TopQuarkAnalysis/TopTools/test/$(file)))$(if $(xfile),$(xfile),$(warning No such file exists: src/TopQuarkAnalysis/TopTools/test/$(file). Please fix src/TopQuarkAnalysis/TopTools/test/BuildFile.))))
runtestTqafTopTools := self/src/TopQuarkAnalysis/TopTools/test
runtestTqafTopTools_TEST_RUNNER_CMD :=  runtestTqafTopTools  /bin/bash TopQuarkAnalysis/TopTools/test runtests.sh
runtestTqafTopTools_BuildFile    := $(WORKINGDIR)/cache/bf/src/TopQuarkAnalysis/TopTools/test/BuildFile
runtestTqafTopTools_LOC_USE := self FWCore/Utilities
runtestTqafTopTools_PACKAGE := self/src/TopQuarkAnalysis/TopTools/test
ALL_PRODS += runtestTqafTopTools
runtestTqafTopTools_INIT_FUNC        += $$(eval $$(call Binary,runtestTqafTopTools,src/TopQuarkAnalysis/TopTools/test,src_TopQuarkAnalysis_TopTools_test,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_TEST),test,$(SCRAMSTORENAME_LOGS)))
else
$(eval $(call MultipleWarningMsg,runtestTqafTopTools,src/TopQuarkAnalysis/TopTools/test))
endif
ALL_COMMONRULES += src_TopQuarkAnalysis_TopTools_test
src_TopQuarkAnalysis_TopTools_test_parent := TopQuarkAnalysis/TopTools
src_TopQuarkAnalysis_TopTools_test_INIT_FUNC += $$(eval $$(call CommonProductRules,src_TopQuarkAnalysis_TopTools_test,src/TopQuarkAnalysis/TopTools/test,TEST))
