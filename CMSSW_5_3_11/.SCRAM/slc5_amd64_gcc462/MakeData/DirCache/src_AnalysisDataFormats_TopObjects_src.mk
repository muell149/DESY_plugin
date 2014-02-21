ifeq ($(strip $(AnalysisDataFormats/TopObjects)),)
ALL_COMMONRULES += src_AnalysisDataFormats_TopObjects_src
src_AnalysisDataFormats_TopObjects_src_parent := AnalysisDataFormats/TopObjects
src_AnalysisDataFormats_TopObjects_src_INIT_FUNC := $$(eval $$(call CommonProductRules,src_AnalysisDataFormats_TopObjects_src,src/AnalysisDataFormats/TopObjects/src,LIBRARY))
AnalysisDataFormatsTopObjects := self/AnalysisDataFormats/TopObjects
AnalysisDataFormats/TopObjects := AnalysisDataFormatsTopObjects
AnalysisDataFormatsTopObjects_files := $(patsubst src/AnalysisDataFormats/TopObjects/src/%,%,$(wildcard $(foreach dir,src/AnalysisDataFormats/TopObjects/src ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
AnalysisDataFormatsTopObjects_BuildFile    := $(WORKINGDIR)/cache/bf/src/AnalysisDataFormats/TopObjects/BuildFile
AnalysisDataFormatsTopObjects_LOC_USE := self FWCore/Utilities DataFormats/Common DataFormats/TauReco DataFormats/JetReco DataFormats/METReco DataFormats/MuonReco DataFormats/TrackReco DataFormats/PatCandidates DataFormats/HepMCCandidate DataFormats/EgammaCandidates CommonTools/CandUtils root
AnalysisDataFormatsTopObjects_PRE_INIT_FUNC += $$(eval $$(call edmPlugin,AnalysisDataFormatsTopObjectsCapabilities,AnalysisDataFormatsTopObjects,$(SCRAMSTORENAME_LIB)))
AnalysisDataFormatsTopObjects_PRE_INIT_FUNC += $$(eval $$(call LCGDict,AnalysisDataFormatsTopObjects,0,src/AnalysisDataFormats/TopObjects/src/classes.h,src/AnalysisDataFormats/TopObjects/src/classes_def.xml,$(SCRAMSTORENAME_LIB),$(GENREFLEX_ARGS) --fail_on_warnings,Capabilities))
AnalysisDataFormatsTopObjects_EX_LIB   := AnalysisDataFormatsTopObjects
AnalysisDataFormatsTopObjects_EX_USE   := $(foreach d,$(AnalysisDataFormatsTopObjects_LOC_USE),$(if $($(d)_LOC_FLAGS_NO_RECURSIVE_EXPORT),,$d))
AnalysisDataFormatsTopObjects_PACKAGE := self/src/AnalysisDataFormats/TopObjects/src
ALL_PRODS += AnalysisDataFormatsTopObjects
AnalysisDataFormatsTopObjects_INIT_FUNC        += $$(eval $$(call Library,AnalysisDataFormatsTopObjects,src/AnalysisDataFormats/TopObjects/src,src_AnalysisDataFormats_TopObjects_src,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS)))
endif
