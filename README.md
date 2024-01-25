# Investigating the Impact of Gender and Age on the Severity of COVID-19

This research paper analyzed how gender and age will impact the severity of COVID infections based on the dataset provided from source Open Data Toronto. The paper is written via Posit Cloud with R packages `tidyverse`, `janitor`, `lubridate`, `kableExtra`, `knitr`, and `ggplot2`. 

**Statement of LLM usage: The graphical analysis part of the paper and the data cleaning process used ChatGPT-4 for insights. The entire chat is included in the usage file at `LLM_Usage.txt`, which can be found from the `llm` folder under `inputs`.

The `inputs` folder includes three sub-folders: `data`, `llm`, and `sketchs`. `data` includes the unedited date directly downloaded from Open Data Toronto. `sketchs` contains my sketches for the dataset.

The `outputs` folder includes two sub-folders: `data`, and `paper`. `data` here includes the downloaded dataset after cleaning process. `paper` folder contains `Paper.Qmd` which stores all the R codes for this papyer in Quarto document, with the reference lists included at `references.bib`. The pdf version of this paper can be found at `Paper.pdf` in this folder as well. 

The `scripts` folder includes three R files: 
- `00-simulate_data.R` stores the code for my simulation for the actual data, including several tests developed to test the success of simulation.
- `01-download_data.R` stores the code for downloading the actual data from Open Data Toronto.
- `02-cleaned_data.R` stores the code for the actual data cleaning process, to assist further graphical analysis. 

