use "E:\CHECHO\UNIVERSIDAD\INTERSEMESTRAL 2020\CURSO VERANO_CAUSAL INFERENCE\GitHub\causal-inference-class\hansen_dwi.dta", clear
gen DUI=0
replace DUI=1 if bac1>= 0.08
br bac1 DUI
