ifeq ($(strip $(resolhistowriter)),)
resolhistowriter_files := $(patsubst src/TopAnalysis/TopUtils/bin/%,%,$(foreach file,resolhistowriter.cc,$(eval xfile:=$(wildcard src/TopAnalysis/TopUtils/bin/$(file)))$(if $(xfile),$(xfile),$(warning No such file exists: src/TopAnalysis/TopUtils/bin/$(file). Please fix src/TopAnalysis/TopUtils/bin/BuildFile.))))
resolhistowriter := self/src/TopAnalysis/TopUtils/bin
resolhistowriter_BuildFile    := $(WORKINGDIR)/cache/bf/src/TopAnalysis/TopUtils/bin/BuildFile
resolhistowriter_LOC_USE := self rootgpad
resolhistowriter_PACKAGE := self/src/TopAnalysis/TopUtils/bin
ALL_PRODS += resolhistowriter
resolhistowriter_INIT_FUNC        += $$(eval $$(call Binary,resolhistowriter,src/TopAnalysis/TopUtils/bin,src_TopAnalysis_TopUtils_bin,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_BIN),bin,$(SCRAMSTORENAME_LOGS)))
else
$(eval $(call MultipleWarningMsg,resolhistowriter,src/TopAnalysis/TopUtils/bin))
endif
ifeq ($(strip $(resolutioncalculator)),)
resolutioncalculator_files := $(patsubst src/TopAnalysis/TopUtils/bin/%,%,$(foreach file,resolutioncalculator.cc,$(eval xfile:=$(wildcard src/TopAnalysis/TopUtils/bin/$(file)))$(if $(xfile),$(xfile),$(warning No such file exists: src/TopAnalysis/TopUtils/bin/$(file). Please fix src/TopAnalysis/TopUtils/bin/BuildFile.))))
resolutioncalculator := self/src/TopAnalysis/TopUtils/bin
resolutioncalculator_BuildFile    := $(WORKINGDIR)/cache/bf/src/TopAnalysis/TopUtils/bin/BuildFile
resolutioncalculator_LOC_USE := self rootgpad
resolutioncalculator_PACKAGE := self/src/TopAnalysis/TopUtils/bin
ALL_PRODS += resolutioncalculator
resolutioncalculator_INIT_FUNC        += $$(eval $$(call Binary,resolutioncalculator,src/TopAnalysis/TopUtils/bin,src_TopAnalysis_TopUtils_bin,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_BIN),bin,$(SCRAMSTORENAME_LOGS)))
else
$(eval $(call MultipleWarningMsg,resolutioncalculator,src/TopAnalysis/TopUtils/bin))
endif
ALL_COMMONRULES += src_TopAnalysis_TopUtils_bin
src_TopAnalysis_TopUtils_bin_parent := TopAnalysis/TopUtils
src_TopAnalysis_TopUtils_bin_INIT_FUNC += $$(eval $$(call CommonProductRules,src_TopAnalysis_TopUtils_bin,src/TopAnalysis/TopUtils/bin,BINARY))
