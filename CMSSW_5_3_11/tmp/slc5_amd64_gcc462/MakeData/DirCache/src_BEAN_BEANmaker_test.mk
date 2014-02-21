ALL_COMMONRULES += src_BEAN_BEANmaker_test
src_BEAN_BEANmaker_test_parent := BEAN/BEANmaker
src_BEAN_BEANmaker_test_INIT_FUNC += $$(eval $$(call CommonProductRules,src_BEAN_BEANmaker_test,src/BEAN/BEANmaker/test,TEST))
