bioplatforms2biosamples
===========

  - [Description](#description)
  - [Diagram](#diagram)
  - [User guide](#user-guide)
      - [Quick start guide](#quick-start-guide)
      - [Infrastructure usage and
        recommendations](#infrastructure-usage-and-recommendations)
  - [Workflow summaries](#workflow-summaries)
      - [Metadata](#metadata)
      - [Component tools](#component-tools)
      - [Required (minimum)
        inputs/parameters](#required-minimum-inputsparameters)
  - [Additional notes](#additional-notes)
  - [Help/FAQ/Troubleshooting](#helpfaqtroubleshooting)
  - [3rd party Tutorials](#3rd-party-tutorials)
  - [Licence(s)](#licences)
  - [Acknowledgements/citations/credits](#acknowledgementscitationscredits)

---

# Description

An R function - ```bioplatforms2biosamples``` - is provided that creates [BioSamples](https://www.ebi.ac.uk/biosamples/) ready templates from a  [Bioplatforms Australia Data Portal](https://data.bioplatforms.com/) sample (i.e. "package") metadata sheet.

> BioSamples metadata checklists can be viewed [here](https://www.ebi.ac.uk/ena/browser/checklists).

---

# Diagram

---

# User guide

## Quick start guide

### Set up R

Make sure that you:

1. Have R installed: you can obtain R [here]()
2. Have downloaded and installed the required dependencies, in this case the ```tidyverse``` package

### Prepare the required files

#### Source metadata file

A source metadata file collected from the [Bioplatforms Australia Data Portal](https://data.bioplatforms.com/) needs to be provided in ```*.csv``` format, each column of which contains a variable and each row of which contains an observation.

#### Alignment file

An alignment file needs to be provided in ```*.tsv``` format.

This file is critical as it defines a \1:1 alignment of each Bioplatforms Australia metadata field name to each relevant BioSamples field name - as sourced from the [BioSamples checklists](https://www.ebi.ac.uk/ena/browser/checklists) + the core BioSamples metadata requirements, which includes fields such as ```sample_title``` and ```common_name```.

An example alignment file is included in this repository for GAP.

### Load files into R



### Run the function

Running the following R script will create a BioSamples ready metadata sheet as a tibble called ```biosamples_sheet```

	biosamples_sheet <- prefill_biosamples_template(
		metadata_csv_location = "```metadata file location```",
		alignment_tsv_location = "```bioplatforms / biosamples alignment file location```"
	)

---

## Infrastructure usage and recommendations

- The R function is for metadata conversion, and as such does NOT require high end computational infrastructure.
- It is sufficient to have an up-to-date version of R and the required dependencies downloaded and installed.

---

## Compute resource usage across tested infrastructures

Not applicable.

---

# Benchmarking

Not applicable.

---

# Tool summary

## Metadata

|metadata field     | value  							|
|-------------------|:---------------------------------:|
|name				| bioplatforms2biosamples 			|
|description        | 		                  			|
|homepage           |                    				|
|version	        | \1.0	                            |
|operation			|									|
|toolType			| Command-line tool					|
|topic				|									|
|operatingSystem	| Windows							|
|language			| R									|
|license            | TBD                               |
|credits	        | 			                 		|

---

## Dependencies

The component dependencies required to use the ```bioplatforms2biosamples``` function are outlined below:

| Dependency name 		   | Dependency version 		 | Tool 						    | Tool version   |
|--------------------------|-----------------------------|----------------------------------|----------------|
|tidyverse                 |1.3.0         				 |bioplatforms2biosample			|\1.0			 |

---

## Required (minimum) inputs/parameters

The following input files are expected by the bioplatforms2biosamples function:

- The source metadata file in ```*.csv``` format, each column of which contains a variable and each row of which contains an observation.
- An alignment file in ```*.tsv``` format: this file defines the \1:1 alignment of each Bioplatforms Australia metadata field name to each relevant BioSamples field name - as sourced from the [BioSamples checklists](https://www.ebi.ac.uk/ena/browser/checklists) combined with their core metadata requirements, which includes fields such as ```sample_title``` and ```common_name```.

---

# Additional notes

---

# Help/FAQ/Troubleshooting

---

# 3rd party Tutorials 

- [Bioplatforms Australia Data Portal How-to-Guides](https://usersupport.bioplatforms.com/)

---

# Licence(s)

---

# Acknowledgements/citations/credits

The ```bioplatforms2biosamples``` function:

- makes use of [R](https://www.r-project.org/) and was developed using [RStudio](https://www.rstudio.com/)
- was developed to support the [Genomics for Australian Plants (GAP)](https://www.genomicsforaustralianplants.com/) Framework Initiative

---
