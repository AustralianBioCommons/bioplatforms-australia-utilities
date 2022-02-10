

#############################################
### Create pre-filled BioSamples template ###
#############################################

bioplatforms2biosamples <- function(metadata_csv_location, alignment_tsv_location){
  
  ### import alignment file
  alignment_original <- read_tsv(alignment_tsv_location)
  
  ### filter alignment file to isolate those fields where an alignment exists
  alignment <- alignment_original %>%
    filter(bioplatforms_alignment != "None")
  
  ### filter alignment file to isolate those fields where NO alignment exists
  missing_fields <- alignment_original %>%
    filter(bioplatforms_alignment == "None") %>%
    pull(biosamples)
  
  ### define old and new names based on the alignment
  #see https://stackoverflow.com/a/41343022
  newnames <- alignment$biosamples
  oldnames <- alignment$bioplatforms_alignment
  
  ### import bioplatforms metadata & set old and new file names based on the aligned fields only
  metadata_new_title <- read_csv(metadata_csv_location)
  
  metadata_temp <- metadata_new_title %>%
    select(alignment$bioplatforms_alignment) %>%
    #see https://stackoverflow.com/a/41343022
    rename_with(~ newnames[which(oldnames == .x)], .cols = oldnames)
  
  ### add "missing" fields - in effect those where no alignment exists
  #see https://stackoverflow.com/a/18215216  
  metadata_temp[, missing_fields] <- NA
  
  ### reorder the columns based on the original alignment file
  metadata_complete <- metadata_temp %>%
    select(alignment_original$biosamples)
  
}
