*Answer 4*
*(a)*
log using "C:\Users\User\Desktop\ECO 4106_1803064 Final Examination\Md Rabiul Islam.smcl"
label variable educ "years of schooling"
label variable cigpric "no cigs smoked per day"
label define white 0 "non-white" 1 "white"
label values white white
label variable age "age in years"
label variable income "annual income"
label variable cigpric "states cig price per day"
label variable cigs "no of cigs smoked per day"
label define restaurn 0 "other" 1 "restaurant impose smoke restrictions"
label values restaurn restaurn
label define married 0 "unmarried" 1 "married"
label values married married
*(b)*
ttest educ, by( married)
*(c)*
sum income cigpric educ, detail
*Answer 5*
*(a)*
sum
bar income
twoway (bar income, sort)
*(b)*
graph bar (sum) income
graph save Graph "C:\Users\User\Desktop\ECO 4106_1803064 Final Examination\1803064.gph"
*(c)*
save "C:\Users\User\Desktop\ECO 4106_1803064 Final Examination\1803064.dta"
*Answer 6*
*(a)*
correlate educ cigpric white age income cigs restaurn married
*(b)*
gen age_square=  age* age
regress cigs educ age age_square married income restaurn white
*(C)*
tabulate married, summarize( married)
save "C:\Users\User\Desktop\ECO 4106_1803064 Final Examination\1803064.dta", replace
