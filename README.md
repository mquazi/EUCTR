# 🧪 EUCTR Scraper

Extract and organize clinical trial data from the [EU Clinical Trials Register (EUCTR)](https://www.clinicaltrialsregister.eu/) into a tidy SQLite database.

## 🚀 Overview

This project is designed to scrape, clean, and store clinical trials data from the EUCTR using R. The output is a structured SQLite database that you can query, analyze, and integrate into downstream projects or dashboards. 

- `create_sql.R`: Main script to extract trial data and generate a local SQLite database. 

## 🛠 Requirements

- R version ≥ 4.0
- Packages:
  - `ctrdata`
  - `RSQLite`
  - `DBI`
