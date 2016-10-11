Tech Talk: R Markdown
===
author: Brian Silva
date: Nov. 2016
autosize: true
css: styles.css

Outline
===

- Getting Started
- R Markdown Background
- R Markdown for Reports
- R Markdown for Presentations


Getting Started
===

You will need to run the following code before the talk:


```r
packages <- c('data.table', 'knitr', 'rmarkdown')

notInstalled <- packages[! sapply(X = packages, 
                                  FUN = require, 
                                  character.only = T)]

if(length(notInstalled) > 0) {
  
  install.packages(notInstalled)
  
  sapply(X = notInstalled, FUN = require, character.only = T)
  
}
```

Also, if you haven't done so already, clone the repo from here:


Note: It is highly recommended that you follow along in RStudio as it works nicely with R Markdown


R Markdown Background
===

Benefits:
- Automatically HTML, PDF, and Word documents through R
- Allows for interactive visuals
- Supports Markdown, HTML, and LaTeX _(and maybe some others)_

This whole presentation was created using R Markdown!


Markdown Basics
===

Markdown format is used in many places: Wikipedia, Github, Confluence, etc.

Here is a good guide explaining some common things you may want to do in Markdown:

[Quick Reference Guide](https://www.rstudio.com/wp-content/uploads/2015/03/rmarkdown-reference.pdf)

R Markdown allows you to embed R code as well using chunks like the following:
<!-- Disregard the weird formatting in markdown, this was added so the code 
would display properly in HTML -->
```
```{r}
plot(x, y)
```
```

You can also run R code inline like the following:

<!-- Disregard the weird formatting in markdown, this was added so the code 
would display properly in HTML -->
```
Today's date is `r now()`
```

Simple R Markdown HTML Report
===

Open the file _simpleReport.Rmd_ and follow along.





