Summarize\_dat
================

Display a summary of a data.frame or tbl\_df with a few commands

It should display the information of str() and summary() but more.

Endresult in a html file for example

Also display a bar if it takes longer than a few second.

Current state of project
========================

This project is now in early stages. I very welcome feedback (open an issue or contact me directly) or cooperation. Look at the ['dev' branch](https://github.com/RMHogervorst/summarize_dat/tree/dev) for more information.

[![Project Status: Concept - Minimal or no implementation has been done yet.](http://www.repostatus.org/badges/latest/concept.svg)](http://www.repostatus.org/#concept)

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
