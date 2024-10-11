# Replication package for "Home Bias in Public Procurement"

## Data Availability and Provenance Statement
### CEPII Geodist
GeoDist (CEPII 2018) is free to use and redistribute as specified in this license: https://www.etalab.gouv.fr/wp-content/uploads/2018/11/open-licence.pdf Data is described in Mayer and Zignago (2011).

### Tenders Electronic Daily (TED)
TED (European Commission 2022) is free to use and redistribute as specified in this license: https://data.europa.eu/en/copyright-notice (CC BY 4.0 International) Data is described in the TED documentation and downloadable in .csv format from the following link: https://data.europa.eu/euodp/en/data/dataset/ted-csv

### Country codes
Country codes are from DataHub (2021) and are free to use and redistribute as specified in this license: https://opendatacommons.org/licenses/pddl/

## Software requirements
We used Stata 16.0 for data preparation and analysis. 

## Hardware requirements
Code was last run on a standard Mac laptop, taking a few minutes.

## Instructions for replicators
Run `main.do` to replicate the results. The code will download the data from the sources listed above and save it in the `data` folder. The code will also save the results in the `figure` folder.

## List of reproduced figures

| Figure | Description | Source |
|---|---|---|
| `figure/fig1.pdf` | Contract value against distance | Produced by `analysis.do` line 14 |

## References
- CEPII (2018), "GeoDist [Data set]", Available at https://www.cepii.fr/cepii/en/bdd_modele/bdd_modele_item.asp?id=6. Last accessed 2024-10-11
- Mayer, T. & Zignago, S. (2011), Notes on CEPII’s distances measures: the GeoDist Database, CEPII Working Paper 2011-25
- European Commission, 2022. "Tenders Electronic Daily (TED) (csv subset) – public procurement notices [data set]." Available at: https://data.europa.eu/data/datasets/ted-csv Sample extract distributed by Coded Thinking OÜ, 2023, available at: https://github.com/codedthinking/tender-home-bias/tree/v2.0
- DataHub, 2021. "Comprehensive country codes: ISO 3166, ITU, ISO 4217 currency codes and many more [data set]" Available at: https://datahub.io/core/country-codes. Last accessed 2024-10-11
