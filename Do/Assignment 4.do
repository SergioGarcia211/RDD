<<<<<<< HEAD
**Hansen AER

**1. 
use "E:\CHECHO\UNIVERSIDAD\INTERSEMESTRAL 2020\CURSO VERANO_CAUSAL INFERENCE\GitHub\causal-inference-class\hansen_dwi.dta", clear

**3. Dummy
gen DUI=0
replace DUI=1 if bac1>= 0.08

**4. BAC Distribution
histogram bac1,freq xline(0.008) width(0.0001) title("BAC histogram")

**5. Table 2 (Panel A)
reg male i.DUI##c.bac1
est store male
reg white i.DUI##c.bac1
est store white
reg aged i.DUI##c.bac1
est store aged
reg acc i.DUI##c.bac1
est store acc
esttab male white aged acc using a.tex, se star parentheses keep(1.DUI) title ("Table 2 - Panel A")

**6. Figure 2 (Panel A-D)
cmogram male bac1 if bac1<=0.15, ci (95) cut(0.08) scatter line(0.08) lfit title("Male - Linear")
cmogram male bac1 if bac1<=0.15, ci (95) cut(0.08) scatter line(0.08) qfit title("Male - Quadratic")
cmogram white bac1 if bac1<=0.15, ci (95) cut(0.08) scatter line(0.08) lfit title("White - Linear")
cmogram white bac1 if bac1<=0.15, ci (95) cut(0.08) scatter line(0.08) qfit title("White - Quadratic")
cmogram aged bac1 if bac1<=0.15, ci (95) cut(0.08) scatter line(0.08) lfit title("Age - Linear")
cmogram aged bac1 if bac1<=0.15, ci (95) cut(0.08) scatter line(0.08) qfit title("Age - Quadratic")
cmogram acc bac1 if bac1<=0.15, ci (95) cut(0.08) scatter line(0.08) lfit title("Accident at scene - Linear")
cmogram acc bac1 if bac1<=0.15, ci (95) cut(0.08) scatter line(0.08) qfit title("Accident at scene - Quadratic")

**7. Table3 (Panel A-B)
reg recidivism i.DUI bac1 if bac1>=0.03 & bac1 <=0.13, robust
est store Linear
reg recidivism i.DUI##c.bac1 if bac1>=0.03 & bac1 <=0.13, robust
est store Interaction
reg recidivism i.DUI##(c.bac1##c.bac1) if bac1>=0.03 & bac1 <=0.13, robust
est store Inter_Quadr
reg recidivism i.DUI bac1 if bac1>=0.055 & bac1 <=0.105, robust
est store B1
reg recidivism i.DUI##c.bac1 if bac1>=0.055 & bac1 <=0.105, robust
est store B2
reg recidivism i.DUI##(c.bac1##c.bac1) if bac1>=0.055 & bac1 <=0.105, robust
est store B3
esttab A1 A2 A3 using ass4.tex, se parentheses keep(1.DUI) title ("Table 3 - Panel A")
esttab B1 B2 B3 using assi4.tex, se parentheses keep(1.DUI) title ("Table 3 - Panel B") 


**8. Figure3
cmogram recidivism bac1 if bac1<=0.15, cut(0.08) scatter line(0.08) lfit title("Figure 3 - Linear")
cmogram recidivism bac1 if bac1<=0.15, cut(0.08) scatter line(0.08) qfit title("Figure 3 - Quadratic")
=======
use "E:\CHECHO\UNIVERSIDAD\INTERSEMESTRAL 2020\CURSO VERANO_CAUSAL INFERENCE\GitHub\causal-inference-class\hansen_dwi.dta", clear
gen DUI=0
replace DUI=1 if bac1>= 0.08
br bac1 DUI
>>>>>>> 7e4c9c573f20f5f823d31ff558c3429717d5f153
