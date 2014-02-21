ALL_COMMONRULES += src_TopQuarkAnalysis_Configuration_test
src_TopQuarkAnalysis_Configuration_test_parent := TopQuarkAnalysis/Configuration
src_TopQuarkAnalysis_Configuration_test_INIT_FUNC += $$(eval $$(call CommonProductRules,src_TopQuarkAnalysis_Configuration_test,src/TopQuarkAnalysis/Configuration/test,TEST))
