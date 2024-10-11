import delimited "data/raw/country-codes.csv", varnames(1) case(preserve) encoding("utf-8") clear
keep ISO31661Alpha2 ISO31661Alpha3
duplicates drop ISO31661Alpha2, force
save "data/country-codes.dta", replace

import delimited "data/raw/ted-sample.csv", varnames(1) case(preserve) encoding("utf-8") clear
keep ID_NOTICE_CAN YEAR CAE_NAME ISO_COUNTRY_CODE VALUE_EURO WIN_NAME WIN_COUNTRY_CODE

rename ISO_COUNTRY_CODE ISO31661Alpha2
merge m:1 ISO31661Alpha2 using "data/country-codes.dta", nogenerate keep(master match)
rename ISO31661Alpha3 iso_d

drop ISO31661Alpha2
rename WIN_COUNTRY_CODE ISO31661Alpha2
merge m:1 ISO31661Alpha2 using "data/country-codes.dta", nogenerate keep(master match)
rename ISO31661Alpha3 iso_o

* Romania country code has changed between datasets
replace iso_o = "ROM" if iso_o == "ROU"
replace iso_d = "ROM" if iso_d == "ROU"

collapse (sum) VALUE_EURO (count) N = VALUE_EURO, by(iso_o iso_d)

* there are 1,782 unmatched observations, but forget about them for now
merge m:1 iso_o iso_d using "data/raw/dist_cepii.dta", nogenerate keep(match)


save "data/analysis.dta", replace
