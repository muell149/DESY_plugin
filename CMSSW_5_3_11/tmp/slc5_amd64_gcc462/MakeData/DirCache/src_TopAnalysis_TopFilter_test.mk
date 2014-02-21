ALL_COMMONRULES += src_TopAnalysis_TopFilter_test
src_TopAnalysis_TopFilter_test_parent := TopAnalysis/TopFilter
src_TopAnalysis_TopFilter_test_INIT_FUNC += $$(eval $$(call CommonProductRules,src_TopAnalysis_TopFilter_test,src/TopAnalysis/TopFilter/test,TEST))
