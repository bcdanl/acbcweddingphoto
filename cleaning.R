
file_names <- list.files()
print(file_names)

# 2. Get file names from a specific directory
#    Make sure the directory path is correct.
specific_directory <- "/Users/bchoe/Documents/websites/acbcweddingphoto/photos/Newlyweds" # Replace with your actual directory path
file_names_in_dir <- list.files(specific_directory)
library(tidyverse)
fn <- str_c("![](photos/Newlyweds/", file_names_in_dir, '){.lightbox style="column-span: all;" group="Newlyweds-gallery"}')


# Define the directory path
dir_path <- "/Users/bchoe/Downloads/quarto-gallery-main/photos/Black & White"

# List all .jpg files in the directory
jpg_files <- list.files(path = dir_path, pattern = "\\.jpg$", full.names = TRUE)

# Loop through each file and rename it
for (file in jpg_files) {
  # Extract file path components
  file_base <- tools::file_path_sans_ext(basename(file))
  new_name <- paste0(file_base, "bw.jpg")
  new_path <- file.path(dirname(file), new_name)
  
  # Rename the file
  file.rename(from = file, to = new_path)
}