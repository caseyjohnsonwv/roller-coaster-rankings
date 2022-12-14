# roller-coaster-rankings

This is literally just [Datasette](https://datasette.io/) running on local.

## Quickstart

1. Obviously clone, install requirements, virtual env if that's your speed, etc etc
2. Run `bash utils/start.sh`

## The Gist of It

- The `data/` folder contains all the CSVs to be uploaded to the DB. These are parsed on startup.
- The `utils/` folder contains Bash scripts for launching the application.