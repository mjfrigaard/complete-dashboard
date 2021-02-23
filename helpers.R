#=====================================================================#
# This is code to create: helpers.R for complete-report
# Authored by and feedback to mjfrigaard@gmail.com
# MIT License
# Version: 1.1
#=====================================================================#


# packages ----------------------------------------------------------------

library(tidyverse)
library(janitor)
library(reactable)
library(flexdashboard)
library(readxl)
library(htmltools)
library(noteMD)
library(knitr)

# miss_filter function -----------------------------------------------
miss_filter <- function(data) { 
  
  MissDataFields <- filter(.data = data, `# Missing` > 0)
  
  return(MissDataFields)
  
}

# critical_miss_filter function -----------------------------------------------
critical_miss_filter <- function(data) { 
  
  CritDataFields <- filter(.data = data, `Dataset Name` %in% 
                             c("ECIF", "MHB", "CEB", "QSEM", "AE"))
  
  CritMissDataFields <- filter(.data = CritDataFields, `# Missing` > 0)
  
  
  return(CritMissDataFields)
  
}


# critical_filter function ------------------------------------------------
# this function will filter the data based on the check-box input

critical_filter <- function(data) { 
  
  CritDataFields <- filter(.data = data, `Dataset Name` %in% 
                             c("ECIF", "MHB", "CEB", "QSEM", "AE"))
  
  return(CritDataFields)
  
}






