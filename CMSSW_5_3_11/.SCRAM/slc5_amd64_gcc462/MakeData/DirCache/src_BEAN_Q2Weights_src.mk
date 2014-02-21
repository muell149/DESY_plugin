ifeq ($(strip $(BEAN/Q2Weights)),)
ALL_COMMONRULES += src_BEAN_Q2Weights_src
src_BEAN_Q2Weights_src_parent := BEAN/Q2Weights
src_BEAN_Q2Weights_src_INIT_FUNC := $$(eval $$(call CommonProductRules,src_BEAN_Q2Weights_src,src/BEAN/Q2Weights/src,LIBRARY))
BEANQ2Weights := self/BEAN/Q2Weights
BEAN/Q2Weights := BEANQ2Weights
BEANQ2Weights_files := $(patsubst src/BEAN/Q2Weights/src/%,%,$(wildcard $(foreach dir,src/BEAN/Q2Weights/src ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
BEANQ2Weights_BuildFile    := $(WORKINGDIR)/cache/bf/src/BEAN/Q2Weights/BuildFile
BEANQ2Weights_LOC_USE := self FWCore/PluginManager root hepmc DataFormats/Common AnalysisDataFormats/TopObjects FWCore/Framework FWCore/ParameterSet DataFormats/Math DataFormats/JetReco DataFormats/Provenance SimGeneral/HepPDTRecord lhapdf fastjet CommonTools/UtilAlgos
BEANQ2Weights_PRE_INIT_FUNC += $$(eval $$(call edmPlugin,BEANQ2Weights,BEANQ2Weights,$(SCRAMSTORENAME_LIB)))
BEANQ2Weights_PACKAGE := self/src/BEAN/Q2Weights/src
ALL_PRODS += BEANQ2Weights
BEANQ2Weights_INIT_FUNC        += $$(eval $$(call Library,BEANQ2Weights,src/BEAN/Q2Weights/src,src_BEAN_Q2Weights_src,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS)))
endif
