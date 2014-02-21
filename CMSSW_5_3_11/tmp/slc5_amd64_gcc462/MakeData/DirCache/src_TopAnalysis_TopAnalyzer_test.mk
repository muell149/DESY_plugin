ALL_COMMONRULES += src_TopAnalysis_TopAnalyzer_test
src_TopAnalysis_TopAnalyzer_test_parent := TopAnalysis/TopAnalyzer
src_TopAnalysis_TopAnalyzer_test_INIT_FUNC += $$(eval $$(call CommonProductRules,src_TopAnalysis_TopAnalyzer_test,src/TopAnalysis/TopAnalyzer/test,TEST))
