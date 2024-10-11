import requests
import os

# Define the directory to save the downloaded files
rawdata = '../data'

# Ensure the directory exists
os.makedirs(rawdata, exist_ok=True)

# Download all the data we need
urls = [
    ("http://www.cepii.fr/distance/dist_cepii.dta", "dist_cepii.dta"),
    ("https://github.com/codedthinking/tender-home-bias/releases/download/v2.0/ted-sample.csv", "ted-sample.csv"),
    ("https://datahub.io/core/country-codes/r/country-codes.csv", "country-codes.csv")
]

for url, filename in urls:
    response = requests.get(url)
    with open(os.path.join(rawdata, filename), 'wb') as file:
        print(f"Downloading {filename}...")
        file.write(response.content)
        print(f"Downloaded to {rawdata}/{filename}")
