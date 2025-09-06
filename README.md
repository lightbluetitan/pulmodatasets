# PulmoDataSets

The **PulmoDataSets** package offers a thematically rich and diverse collection of datasets focused on the **lungs, respiratory system, and associated diseases**. 
It includes data related to chronic respiratory conditions such as **asthma, chronic bronchitis, and COPD**, 
as well as infectious diseases like **tuberculosis, pneumonia, influenza, and whooping cough**.

## Installation

You can install the `PulmoDataSets` package from CRAN with the following R function:

```R

install.packages("PulmoDataSets")

```

## Load the Package

```R

library(PulmoDataSets)

```

## Dataset Suffixes

Each dataset in the `PulmoDataSets` package uses a `suffix` to denote the type of R object:

- `_df`: data frame

- `_dt`: data table

- `_tbl_df`: tibble

- `_ts`: time series

## Example Datasets

Below are selected example datasets included in the `PulmoDataSets` package:

- `bronchitis_Cardiff_df`: Chronic Bronchitis in Cardiff Men.

- `smoking_UK_tbl_df`: UK Smoking Habits.

- `nicotine_gum_df`: Nicotine Gum and Smoking Cessation.

## Example Code:

```R

# Load the package

library(PulmoDataSets)

# List all datasets in the package

view_datasets_PulmoDataSets()

# Load dataset

data(nicotine_gum_df)

# Preview the dataset

head(nicotine_gum_df)

# Open in Viewer

View(nicotine_gum_df)

```
