ifeq ($(strip $(RecoVertex/AdaptiveVertexFinder)),)
ALL_COMMONRULES += src_RecoVertex_AdaptiveVertexFinder_src
src_RecoVertex_AdaptiveVertexFinder_src_parent := RecoVertex/AdaptiveVertexFinder
src_RecoVertex_AdaptiveVertexFinder_src_INIT_FUNC := $$(eval $$(call CommonProductRules,src_RecoVertex_AdaptiveVertexFinder_src,src/RecoVertex/AdaptiveVertexFinder/src,LIBRARY))
RecoVertexAdaptiveVertexFinder := self/RecoVertex/AdaptiveVertexFinder
RecoVertex/AdaptiveVertexFinder := RecoVertexAdaptiveVertexFinder
RecoVertexAdaptiveVertexFinder_files := $(patsubst src/RecoVertex/AdaptiveVertexFinder/src/%,%,$(wildcard $(foreach dir,src/RecoVertex/AdaptiveVertexFinder/src ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
RecoVertexAdaptiveVertexFinder_BuildFile    := $(WORKINGDIR)/cache/bf/src/RecoVertex/AdaptiveVertexFinder/BuildFile
RecoVertexAdaptiveVertexFinder_LOC_USE := self RecoVertex/KalmanVertexFit RecoVertex/AdaptiveVertexFit RecoVertex/VertexPrimitives RecoVertex/VertexTools TrackingTools/IPTools
RecoVertexAdaptiveVertexFinder_EX_LIB   := RecoVertexAdaptiveVertexFinder
RecoVertexAdaptiveVertexFinder_EX_USE   := $(foreach d,$(RecoVertexAdaptiveVertexFinder_LOC_USE),$(if $($(d)_LOC_FLAGS_NO_RECURSIVE_EXPORT),,$d))
RecoVertexAdaptiveVertexFinder_PACKAGE := self/src/RecoVertex/AdaptiveVertexFinder/src
ALL_PRODS += RecoVertexAdaptiveVertexFinder
RecoVertexAdaptiveVertexFinder_INIT_FUNC        += $$(eval $$(call Library,RecoVertexAdaptiveVertexFinder,src/RecoVertex/AdaptiveVertexFinder/src,src_RecoVertex_AdaptiveVertexFinder_src,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS)))
endif
