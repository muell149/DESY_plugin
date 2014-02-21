ALL_COMMONRULES += src_TopAnalysis_Configuration_test
src_TopAnalysis_Configuration_test_parent := TopAnalysis/Configuration
src_TopAnalysis_Configuration_test_INIT_FUNC += $$(eval $$(call CommonProductRules,src_TopAnalysis_Configuration_test,src/TopAnalysis/Configuration/test,TEST))
