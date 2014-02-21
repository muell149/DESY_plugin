ifeq ($(strip $(PhysicsTools/NtupleUtils)),)
ALL_COMMONRULES += src_PhysicsTools_NtupleUtils_src
src_PhysicsTools_NtupleUtils_src_parent := PhysicsTools/NtupleUtils
src_PhysicsTools_NtupleUtils_src_INIT_FUNC := $$(eval $$(call CommonProductRules,src_PhysicsTools_NtupleUtils_src,src/PhysicsTools/NtupleUtils/src,LIBRARY))
PhysicsToolsNtupleUtils := self/PhysicsTools/NtupleUtils
PhysicsTools/NtupleUtils := PhysicsToolsNtupleUtils
PhysicsToolsNtupleUtils_files := $(patsubst src/PhysicsTools/NtupleUtils/src/%,%,$(wildcard $(foreach dir,src/PhysicsTools/NtupleUtils/src ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
PhysicsToolsNtupleUtils_BuildFile    := $(WORKINGDIR)/cache/bf/src/PhysicsTools/NtupleUtils/BuildFile
PhysicsToolsNtupleUtils_LOC_USE := self root rootmath clhep DataFormats/EgammaCandidates DataFormats/VertexReco DataFormats/TrackReco SimDataFormats/Vertex TrackingTools/PatternTools RecoVertex/KalmanVertexFit RecoVertex/AdaptiveVertexFit RecoVertex/VertexPrimitives RecoVertex/PrimaryVertexProducer TrackingTools/Records TrackingTools/TransientTrack FWCore/Framework FWCore/PluginManager FWCore/ParameterSet
PhysicsToolsNtupleUtils_PRE_INIT_FUNC += $$(eval $$(call edmPlugin,PhysicsToolsNtupleUtilsCapabilities,PhysicsToolsNtupleUtils,$(SCRAMSTORENAME_LIB)))
PhysicsToolsNtupleUtils_PRE_INIT_FUNC += $$(eval $$(call LCGDict,PhysicsToolsNtupleUtils,0,src/PhysicsTools/NtupleUtils/src/classes.h,src/PhysicsTools/NtupleUtils/src/classes_def.xml,$(SCRAMSTORENAME_LIB),$(GENREFLEX_ARGS) --fail_on_warnings,Capabilities))
PhysicsToolsNtupleUtils_EX_LIB   := PhysicsToolsNtupleUtils
PhysicsToolsNtupleUtils_EX_USE   := $(foreach d,$(PhysicsToolsNtupleUtils_LOC_USE),$(if $($(d)_LOC_FLAGS_NO_RECURSIVE_EXPORT),,$d))
PhysicsToolsNtupleUtils_PACKAGE := self/src/PhysicsTools/NtupleUtils/src
ALL_PRODS += PhysicsToolsNtupleUtils
PhysicsToolsNtupleUtils_INIT_FUNC        += $$(eval $$(call Library,PhysicsToolsNtupleUtils,src/PhysicsTools/NtupleUtils/src,src_PhysicsTools_NtupleUtils_src,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS)))
endif
