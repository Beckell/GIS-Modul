# titel: "Niederschlagsmessung im Burgwald"
# authors: ["Doris Eickhoff", "Tobias Borzyk", "Ellen Beck", "Leonie Birnkammer"]


  # Load required library
library(here)  # Für dynamische Pfadangaben (kein setwd!)

# 1. DEFINE URLs for data (replace with real links from data portals)

# Titel:
# Quelle: URL
url_dgm <- "https://gds.hessen.de/downloadcenter/20251118/3D-Daten/Digitales%20Gel%C3%A4ndemodell%20(DGM1)/Landkreis%20Waldeck-Frankenberg/Frankenberg%20(Eder)%20-%20DGM1.zip"

# Quelle: Radolan
url_radolan <- "https://opendata.dwd.de/climate_environment/CDC/grids_germany/daily/radolan/recent/bin/raa01-sf_10000-2511181450-dwd---bin.gz"

# 2. DEFINE LOCAL FILE PATHS 
# uses here::here() to define local file paths in data/raw,

# Pfad für DGM-Datei im Projektordner
dgm_file <- here::here("Leonie","Studium", "Master", "1.Semester", "Advanced GIS + Remote Sensing", "burgwald_rainnet", "Frankenberg(Eder)-DGM1")
               
# Pfad für RADOLAN-Datei im Projektordner
radolan_file <- here::here("Leonie", "Studium", "Master", "1.Semester", "Advanced GIS + Remote Sensing", "burgwald_rainnet", "raa01-sf_10000-2511181450-dwd---bin")

#Download
if (!file.exists(dgm_file)) download.file(url_dgm, destfile = dgm_file, mode = "wb")
if (!file.exists(rad_file)) download.file(url_rad, destfile = rad_file, mode = "wb")