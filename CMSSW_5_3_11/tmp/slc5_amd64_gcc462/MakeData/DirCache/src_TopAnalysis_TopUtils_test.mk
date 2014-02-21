ALL_COMMONRULES += src_TopAnalysis_TopUtils_test
src_TopAnalysis_TopUtils_test_parent := TopAnalysis/TopUtils
src_TopAnalysis_TopUtils_test_INIT_FUNC += $$(eval $$(call CommonProductRules,src_TopAnalysis_TopUtils_test,src/TopAnalysis/TopUtils/test,TEST))
