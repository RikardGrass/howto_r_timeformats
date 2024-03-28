###########################
#
# A Quick start for the most common functions
#   in timesreries date/time formats 
#   in agricultural data sets
#
############################

Sys.setenv(TZ = "Europe/Berlin")
#Sys.setlocale("LC_ALL", "de_DE") # Unix
Sys.setlocale("LC_ALL", "German") # Windows

# Eingabedatum in UTC-Zeit
testdate <- as.POSIXct(strptime("2023-09-01 10:00", format="%Y-%m-%d %H:%M", tz="UTC"))
testdate_gmt <- as.POSIXct(strptime("2023-09-01 10:00", format="%Y-%m-%d %H:%M", tz="GMT"), with_tz = "Europe/Berlin"))


testdate_gmt_berlin <- as.POSIXct("2023-09-01 10:00", "%Y-%m-%d %H:%M", tz ="GMT", with_tz = "Europe/Berlin")


# Umwandlung des Datums in CEST / MET
print(paste0("Warning: changed UTC to GMT for exported data!!"))
attr(testdate, "tzone") <- Sys.timezone(location = TRUE) # change date format to local time 
attr(testdate_gmt, "tzone") <- Sys.timezone(location = TRUE) # change date format to local time 
#attr(result$date, "tzone") <- Sys.timezone(location = TRUE) # change date format to local time 
attr(testdate_gmt_berlin, "tzone") <- Sys.timezone(location = TRUE) # change date format to local time 
#attr(result$date, "tzone") <- Sys.timezone(location = TRUE) # change date format to local time 


#Todo:
#explain:
# GMT vs. UTC
# CET vs. CEST
# GMT
# - has fixed difference to UTC
# - convert to UTC by GNT - 1 


# Sources:
# R Time Date Classes
