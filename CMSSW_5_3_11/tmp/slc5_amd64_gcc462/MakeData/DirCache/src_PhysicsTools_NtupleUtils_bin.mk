ALL_COMMONRULES += src_PhysicsTools_NtupleUtils_bin
src_PhysicsTools_NtupleUtils_bin_parent := PhysicsTools/NtupleUtils
src_PhysicsTools_NtupleUtils_bin_INIT_FUNC += $$(eval $$(call CommonProductRules,src_PhysicsTools_NtupleUtils_bin,src/PhysicsTools/NtupleUtils/bin,BINARY))
