ifeq ($(strip $(TtSemiLRSignalSel_PurityLoop)),)
TtSemiLRSignalSel_PurityLoop_files := $(patsubst src/TopQuarkAnalysis/TopEventSelection/bin/%,%,$(foreach file,TtSemiLRSignalSel_PurityLoop.cpp,$(eval xfile:=$(wildcard src/TopQuarkAnalysis/TopEventSelection/bin/$(file)))$(if $(xfile),$(xfile),$(warning No such file exists: src/TopQuarkAnalysis/TopEventSelection/bin/$(file). Please fix src/TopQuarkAnalysis/TopEventSelection/bin/BuildFile.))))
TtSemiLRSignalSel_PurityLoop := self/src/TopQuarkAnalysis/TopEventSelection/bin
TtSemiLRSignalSel_PurityLoop_BuildFile    := $(WORKINGDIR)/cache/bf/src/TopQuarkAnalysis/TopEventSelection/bin/BuildFile
TtSemiLRSignalSel_PurityLoop_LOC_USE := self AnalysisDataFormats/TopObjects TopQuarkAnalysis/TopTools FWCore/FWLite FWCore/Framework rootcintex root
TtSemiLRSignalSel_PurityLoop_PACKAGE := self/src/TopQuarkAnalysis/TopEventSelection/bin
ALL_PRODS += TtSemiLRSignalSel_PurityLoop
TtSemiLRSignalSel_PurityLoop_INIT_FUNC        += $$(eval $$(call Binary,TtSemiLRSignalSel_PurityLoop,src/TopQuarkAnalysis/TopEventSelection/bin,src_TopQuarkAnalysis_TopEventSelection_bin,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_BIN),bin,$(SCRAMSTORENAME_LOGS)))
else
$(eval $(call MultipleWarningMsg,TtSemiLRSignalSel_PurityLoop,src/TopQuarkAnalysis/TopEventSelection/bin))
endif
ifeq ($(strip $(TtSemiLRSignalSel_SoverSplusBLoop)),)
TtSemiLRSignalSel_SoverSplusBLoop_files := $(patsubst src/TopQuarkAnalysis/TopEventSelection/bin/%,%,$(foreach file,TtSemiLRSignalSel_SoverSplusBLoop.cpp,$(eval xfile:=$(wildcard src/TopQuarkAnalysis/TopEventSelection/bin/$(file)))$(if $(xfile),$(xfile),$(warning No such file exists: src/TopQuarkAnalysis/TopEventSelection/bin/$(file). Please fix src/TopQuarkAnalysis/TopEventSelection/bin/BuildFile.))))
TtSemiLRSignalSel_SoverSplusBLoop := self/src/TopQuarkAnalysis/TopEventSelection/bin
TtSemiLRSignalSel_SoverSplusBLoop_BuildFile    := $(WORKINGDIR)/cache/bf/src/TopQuarkAnalysis/TopEventSelection/bin/BuildFile
TtSemiLRSignalSel_SoverSplusBLoop_LOC_USE := self AnalysisDataFormats/TopObjects TopQuarkAnalysis/TopTools FWCore/FWLite FWCore/Framework rootcintex root
TtSemiLRSignalSel_SoverSplusBLoop_PACKAGE := self/src/TopQuarkAnalysis/TopEventSelection/bin
ALL_PRODS += TtSemiLRSignalSel_SoverSplusBLoop
TtSemiLRSignalSel_SoverSplusBLoop_INIT_FUNC        += $$(eval $$(call Binary,TtSemiLRSignalSel_SoverSplusBLoop,src/TopQuarkAnalysis/TopEventSelection/bin,src_TopQuarkAnalysis_TopEventSelection_bin,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_BIN),bin,$(SCRAMSTORENAME_LOGS)))
else
$(eval $(call MultipleWarningMsg,TtSemiLRSignalSel_SoverSplusBLoop,src/TopQuarkAnalysis/TopEventSelection/bin))
endif
ALL_COMMONRULES += src_TopQuarkAnalysis_TopEventSelection_bin
src_TopQuarkAnalysis_TopEventSelection_bin_parent := TopQuarkAnalysis/TopEventSelection
src_TopQuarkAnalysis_TopEventSelection_bin_INIT_FUNC += $$(eval $$(call CommonProductRules,src_TopQuarkAnalysis_TopEventSelection_bin,src/TopQuarkAnalysis/TopEventSelection/bin,BINARY))
