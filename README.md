<!-- README.md is generated from README.Rmd. Please edit that file -->
summarize\_dat
==============

Display a summary of a data.frame or tbl\_df with a few commands

It should display the information of str() and summary() but more.

Endresult in a html file for example

Also display a bar if it takes longer than a few second.

Other options would be: writing to standard meta data file types such as

-   OKFN Tabular Data Package specifications <http://data.okfn.org/doc/tabular-data-package> (uses json codebooks).
-   The DDIwR package allegedly writes Data Documentation Initiative metadata.

In an ideal world you take your finished dataset, run summarizedat and it opens a file such as the description file where you add your metadata. That metadata is then used in combination with your dataset to create a rmarkdown document. That document has on it's first page a summary of the entire dataset with number of variables and metadata. The other pages are essentially a description of all the variables with ranges and other information. For every variable there is space to add extra information.

The metadatafile transcribes to DDI and to json.

general summary of datafile:
----------------------------

-   size of file
-   number of rows and columns
-   groupings
-   rownames if any
-   variable (column) names

Per variable (column)
---------------------

-   name
-   type
-   number of missings
-   missins sign (9999, -1, etc)

### categorical data (factors)

-   if less then 10 the distribution per category
-   bar chart probably
-   if more than 10 the biggest 5-7 categories
-   if 2 options display special?

### character data

-   number of unique values

### ordinal (ordered factors)

-   display in order
-   identical to cateogrical

### numeric data

-   display densityline with minimum, maximum and median values (like sparkline).
-   also display mean and sd values
-   perhaps normality check?
