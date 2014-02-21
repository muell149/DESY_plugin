ALL_COMMONRULES += src_PhysicsTools_NtupleUtils_test
src_PhysicsTools_NtupleUtils_test_parent := PhysicsTools/NtupleUtils
src_PhysicsTools_NtupleUtils_test_INIT_FUNC += $$(eval $$(call CommonProductRules,src_PhysicsTools_NtupleUtils_test,src/PhysicsTools/NtupleUtils/test,TEST))
