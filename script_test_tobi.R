# titel: "Niederschlagsmessung im Burgwald"
# authors: ["Doris Eickhoff", "Tobias Borzyk", "Ellen Beck", "Leonie Birnkammer"]


  # Load required library
library(here)  # Für dynamische Pfadangaben (kein setwd!)

# 1. DEFINE URLs for data (replace with real links from data portals)

# Titel:
# Quelle: URL
url_dgm <- "https://gds.hessen.de/downloadcenter/20251118/3D-Daten/Digitales%20Gel%C3%A4ndemodell%20(DGM1)/Landkreis%20Waldeck-Frankenberg/Frankenberg%20(Eder)%20-%20DGM1.zip"

url_rad <- "https://opendata.dwd.de/climate_environment/CDC/grids_germany/daily/radolan/recent/bin/raa01-sf_10000-2511181450-dwd---bin.gz"

# 2. DEFINE LOCAL FILE PATHS 
# uses here::here() to define local file paths in data/raw,

# Pfad für DGM-Datei im Projektordner
dgm_file <- here::here("Frankenberg(Eder).zip")

# Pfad für RADOLAN-Datei im Projektordner
rad_file <- here::here("raa01-sf_10000-2511181450-dwd---bin.gz")

if (!file.exists(dgm_file)) download.file(url_dgm, destfile = dgm_file, mode = "wb")
if (!file.exists(rad_file)) download.file(url_rad, destfile = rad_file, mode = "wb")

######! Hinweis "datei.tif" bitte noch mit den richtigen Namen austauschen

# Zielordner für entpackte Daten
dgm_outdir <- here::here("data_dgm")

# Ordner erzeugen, falls nicht vorhanden
dir.create(dgm_outdir, recursive = TRUE, showWarnings = FALSE)

# Entpacken
unzip(dgm_file, exdir = dgm_outdir)

# RADOLAN Daten entpacken mit diesem Package
install.packages("R.utils")

# Package R.utils einladen
library(R.utils)

# Zielpfad = gleiche Datei ohne .gz
rad_outfile <- sub("\\.gz$", "", rad_file)

# Entpacken
gunzip(rad_file, destname = rad_outfile, overwrite = TRUE)

### Hat das Einladen funktioniert?
list.files(dgm_outdir)
file.exists(rad_outfile)

## Einladen der Dateien in r
install.packages("terra")
library(terra)

# Beispiel: erstes GeoTIFF im Ordner laden
dgm_file_tif <- list.files(dgm_outdir, pattern = "\\.tif$", full.names = TRUE)

dgm <- rast(dgm_file_tif)


3. 

4.
