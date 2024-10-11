
# Download all the data we need

download.file(url="http://www.cepii.fr/distance/dist_cepii.dta",
              destfile=file.path(rawdata,"dist_cepii.dta"))
download.file(url="https://github.com/codedthinking/tender-home-bias/releases/download/v2.0/ted-sample.csv",
              destfile=file.path(rawdata,"ted-sample.csv"))
download.file(url="https://datahub.io/core/country-codes/r/country-codes.csv",
              destfile=file.path(rawdata,"country-codes.csv"))



