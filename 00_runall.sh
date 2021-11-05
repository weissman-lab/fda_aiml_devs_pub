#!/bin/bash

echo "Pull FDA device database..."
jupyter nbconvert --to notebook --execute 01_scrape_initial_data.ipynb

echo "Pulling additional fields from openFDA API..."
jupyter nbconvert --to notebook	--execute 02_scrape_approval_details.ipynb

echo "Analyzing data and generating exhibits..."
R -e "rmarkdown::render('03_descriptive_analysis.Rmd')"

echo "Render manuscript..."
R -e "rmarkdown::render('ms/fda_dev_ms.md')"

