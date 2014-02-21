ALL_COMMONRULES += src_CommonTools_RecoUtils_test
src_CommonTools_RecoUtils_test_parent := CommonTools/RecoUtils
src_CommonTools_RecoUtils_test_INIT_FUNC += $$(eval $$(call CommonProductRules,src_CommonTools_RecoUtils_test,src/CommonTools/RecoUtils/test,TEST))
