<!-- README.md is generated from README.Rmd. Please edit that file -->
Current state of project
------------------------

This project is now in early (alpha) stages. I very welcome feedback (open an issue or contact me directly) or cooperation.

[![Project Status: Concept - Minimal or no implementation has been done yet.](http://www.repostatus.org/badges/latest/concept.svg)](http://www.repostatus.org/#concept)

introduction to the summarize\_dat package
==========================================

You have been there, at the end of a research project everything is done, you have painstakingly collected all your measurements, your analyses are done, your paper is under review, you're finished. But there is this small thing about your data.

Documenting your dataset is a boring and tedious task and there is often no incentive to do it correctly. If you want to do the right thing and make your dataset available to the world, you will have to document your data or no one will know what it is or how to use it. However you will often have to enter the same information in multiple places.

This package aims to take away some of your burdens, but leaves you in control.

This package takes your cleaned and ready dataset and helps you in documenting the data. So that it is ready to be hosted on your institutes repository or in larger world wide databases.

The main function `describe_data(df)` takes your dataset and some metadata that you entered and returns a nicely formated rmarkdown document with general information and a descriptive codebook that you can edit. You will be able to add background information about the variables, your collection methods and other information that you deem necessary. When you are satisfied with the rmarkdown document click `knit` and turn your document into a pdf, html or other format.

The package can also write to standard meta data file types such as Tabular Data Package Specifications or Data Documentation Inititiave or Dublin Common Core.

some title
----------

Display a summary of a data.frame or tbl\_df with a few commands

It should display the information of str() and summary() but more.

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
