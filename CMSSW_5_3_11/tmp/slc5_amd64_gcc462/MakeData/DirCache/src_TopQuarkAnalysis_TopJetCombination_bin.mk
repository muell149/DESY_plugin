ifeq ($(strip $(TtSemiLRJetComb_SoverSplusBLoop)),)
TtSemiLRJetComb_SoverSplusBLoop_files := $(patsubst src/TopQuarkAnalysis/TopJetCombination/bin/%,%,$(foreach file,TtSemiLRJetComb_SoverSplusBLoop.cpp,$(eval xfile:=$(wildcard src/TopQuarkAnalysis/TopJetCombination/bin/$(file)))$(if $(xfile),$(xfile),$(warning No such file exists: src/TopQuarkAnalysis/TopJetCombination/bin/$(file). Please fix src/TopQuarkAnalysis/TopJetCombination/bin/BuildFile.))))
TtSemiLRJetComb_SoverSplusBLoop := self/src/TopQuarkAnalysis/TopJetCombination/bin
TtSemiLRJetComb_SoverSplusBLoop_BuildFile    := $(WORKINGDIR)/cache/bf/src/TopQuarkAnalysis/TopJetCombination/bin/BuildFile
TtSemiLRJetComb_SoverSplusBLoop_LOC_USE := self AnalysisDataFormats/TopObjects TopQuarkAnalysis/TopTools FWCore/FWLite FWCore/Framework rootcintex root
TtSemiLRJetComb_SoverSplusBLoop_PACKAGE := self/src/TopQuarkAnalysis/TopJetCombination/bin
ALL_PRODS += TtSemiLRJetComb_SoverSplusBLoop
TtSemiLRJetComb_SoverSplusBLoop_INIT_FUNC        += $$(eval $$(call Binary,TtSemiLRJetComb_SoverSplusBLoop,src/TopQuarkAnalysis/TopJetCombination/bin,src_TopQuarkAnalysis_TopJetCombination_bin,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_BIN),bin,$(SCRAMSTORENAME_LOGS)))
else
$(eval $(call MultipleWarningMsg,TtSemiLRJetComb_SoverSplusBLoop,src/TopQuarkAnalysis/TopJetCombination/bin))
endif
ifeq ($(strip $(TtSemiLRJetComb_PurityLoop)),)
TtSemiLRJetComb_PurityLoop_files := $(patsubst src/TopQuarkAnalysis/TopJetCombination/bin/%,%,$(foreach file,TtSemiLRJetComb_PurityLoop.cpp,$(eval xfile:=$(wildcard src/TopQuarkAnalysis/TopJetCombination/bin/$(file)))$(if $(xfile),$(xfile),$(warning No such file exists: src/TopQuarkAnalysis/TopJetCombination/bin/$(file). Please fix src/TopQuarkAnalysis/TopJetCombination/bin/BuildFile.))))
TtSemiLRJetComb_PurityLoop := self/src/TopQuarkAnalysis/TopJetCombination/bin
TtSemiLRJetComb_PurityLoop_BuildFile    := $(WORKINGDIR)/cache/bf/src/TopQuarkAnalysis/TopJetCombination/bin/BuildFile
TtSemiLRJetComb_PurityLoop_LOC_USE := self AnalysisDataFormats/TopObjects TopQuarkAnalysis/TopTools FWCore/FWLite FWCore/Framework rootcintex root
TtSemiLRJetComb_PurityLoop_PACKAGE := self/src/TopQuarkAnalysis/TopJetCombination/bin
ALL_PRODS += TtSemiLRJetComb_PurityLoop
TtSemiLRJetComb_PurityLoop_INIT_FUNC        += $$(eval $$(call Binary,TtSemiLRJetComb_PurityLoop,src/TopQuarkAnalysis/TopJetCombination/bin,src_TopQuarkAnalysis_TopJetCombination_bin,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_BIN),bin,$(SCRAMSTORENAME_LOGS)))
else
$(eval $(call MultipleWarningMsg,TtSemiLRJetComb_PurityLoop,src/TopQuarkAnalysis/TopJetCombination/bin))
endif
ALL_COMMONRULES += src_TopQuarkAnalysis_TopJetCombination_bin
src_TopQuarkAnalysis_TopJetCombination_bin_parent := TopQuarkAnalysis/TopJetCombination
src_TopQuarkAnalysis_TopJetCombination_bin_INIT_FUNC += $$(eval $$(call CommonProductRules,src_TopQuarkAnalysis_TopJetCombination_bin,src/TopQuarkAnalysis/TopJetCombination/bin,BINARY))
