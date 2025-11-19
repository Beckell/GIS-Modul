library(link2GI)
renv::init()


#Projektordner erstellen

proj_root <- here()
folders <- c(
  "data/raw",
  "data/processed",
  "outputs/figures",
  "scripts",
  "metadata",
  "docs"
)

sapply(folders, function(f) {
  dir_path <- file.path(proj_root, f)
  if (!dir.exists(dir_path)) {
    dir.create(dir_path, recursive = TRUE)
    message("Ordner erstellt: ", dir_path)
  } else {
    message("Ordner existiert bereits: ", dir_path)
  }
})