src_TopAnalysis_TopUtils_scripts_files := $(filter-out \#% %\#,$(notdir $(wildcard $(foreach dir,$(LOCALTOP)/src/TopAnalysis/TopUtils/scripts,$(dir)/*))))
$(eval $(call Src2StoreCopy,src_TopAnalysis_TopUtils_scripts,src/TopAnalysis/TopUtils/scripts,$(SCRAMSTORENAME_BIN),*))
