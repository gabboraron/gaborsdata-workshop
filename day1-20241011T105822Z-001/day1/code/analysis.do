use "data/analysis.dta", clear

generate same_country = (iso_o == iso_d )
generate ln_value = ln(VALUE_EURO)
generate ln_N = ln(N)
generate ln_dist = ln(dist)

tabulate same_country [fw = N]

regress ln_value ln_dist, robust
regress ln_value ln_dist same_country, robust

scatter ln_value ln_dist, msize(tiny) xtitle("Distance, log") ytitle("Total contract value, log")
graph export "output/fig1.png", replace