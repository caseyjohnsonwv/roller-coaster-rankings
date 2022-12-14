# roller-coaster-rankings

This is literally just [Datasette](https://datasette.io/) running on local.

## Quickstart

1. Clone the code.
2. Run `bash utils/start.sh`

## The Gist of It

- The `data/` folder contains all the CSVs to be uploaded to the DB. These are parsed on startup.
- The `utils/` folder contains Bash scripts for launching the application.

## A Note on Data

The data provided from Coasterbot comes from their 2021 poll. Some records may still need to be cleaned - for example, Racer at Kennywood is listed twice (once as "Left", once as "Right") in the raw data. This has been cleaned in `coasterbot_cleaned.csv`, but there are other instances that may need to be cleaned as well.