ALL_COMMONRULES += src_TopAnalysis_HiggsUtils_test
src_TopAnalysis_HiggsUtils_test_parent := TopAnalysis/HiggsUtils
src_TopAnalysis_HiggsUtils_test_INIT_FUNC += $$(eval $$(call CommonProductRules,src_TopAnalysis_HiggsUtils_test,src/TopAnalysis/HiggsUtils/test,TEST))
