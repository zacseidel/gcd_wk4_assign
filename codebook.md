## Codebook

This codebook describes the data and transformations completed to obtain the final dataset.

### Data

The data was provided by UC Irivine Machine Learning Repository, from the Human Activity Recognition dataset.

The data was read in from the source files with no transformations using the read.table function

### Transformations

File run_analysis.R contains all the code and transformations to obtain the final dataset.

Column lables were added to the original dataset from the given labels in the features_info.txt file

Columns that contained "mean" or "std" in their title were kept.

The data was grouped by activity and subject, and summarized with the mean() function and the dplyr summarise_all() command.

