
library(ctrdata)
library(RSQLite)
library(DBI)
getwd()

#setup the db name
db <- nodbi::src_sqlite(
  dbname = "statsupai.sqlite",
  collection = "european_clinical_trials"
)

#select the phase/timeframe for the trials
queries <- c(
  "https://www.clinicaltrialsregister.eu/ctr-search/search?query=&phase=phase-two&dateFrom=2015-12-01&dateTo=2015-12-15"
  #"https://www.clinicaltrialsregister.eu/ctr-search/search?query=&phase=phase-two&dateFrom=2016-01-01&dateTo=2016-01-31"
  )
for (q in queries) {
  ctrLoadQueryIntoDb(queryterm = q, euctrresults = TRUE, con = db)
}

#close the connection with the db
dbQueryHistory(con = db)
sqlite_con <- db$con
DBI::dbDisconnect(sqlite_con)

