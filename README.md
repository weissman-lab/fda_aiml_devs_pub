## Background

This repo is dedicated to scraping, aggregating, and analyzing the database of approved AI/ML devices approved by the FDA that was published on September 22, 2021.

This database was used in the following publication (please cite it if you use this data):

Jessica T. Lee. Alexander T. Moffett, Zahra Faraji, Genevieve P. Kanter, Gary E. Weissman. @article{lee_devices_2022,
title = {Analysis of a public database of predictive devices approved by the FDA for bedside clinical decision support in critical care},
author = {Lee, Jessica T. and Moffett, Alexander T. and Maliha, George M. and Faraji, Zahra and Kanter, Genevieve P. and Weissman, Gary E.},
journal = {under review},
year = {2023}
}. **Under review**.

```
@article{lee_devices_2022,
title = {Analysis of a public database of predictive devices approved by the FDA for bedside clinical decision support in critical care},
author = {Lee, Jessica T. and Moffett, Alexander T. and Maliha, George M. and Faraji, Zahra and Kanter, Genevieve P. and Weissman, Gary E.},
journal = {Under review},
year = {2022}
}
```

## Instructions

I just want the cleaned data file: `fda_approved_devices.csv`

To run everything from scratch, just clone the repo to your computer and run `./00_runall.sh`.

## File structure

- `00_runall.sh` - bash script to run and compile everything at once
- `01_scrape_initial_data.ipynb` - scrape and compile device data from new FDA published database
- `02_scrape_approval_details.ipynb` - pull and merge additional device data from openFDA API
- `03_descriptive_analysis.Rmd` - summarize the FDA data and generate some figures; also contains manually entry of review of eligible devices
