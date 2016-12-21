# Script for running examples 2 & 3


# Path to Rmd file
rmdPath <- 'examples/simpleReport.Rmd'
cssPath <- '../examples/simpleReport.css' # For some reason this has to be relative to the HTML

# Load libraries
library(dygraphs)
library(xtable)
library(rmarkdown)

# Generate some timeseries data
N <- 25

DT <- data.table(dateTime = now() + rnorm(n = N, mean = 0, sd = 24 * 60 * 60), 
                 signal_1 = runif(n = N), 
                 signal_2 = runif(n = N))

styled <- F

#---- 
# Example 2: Reporting with R Markdown

# Use the rmarkdown function, render, to generate the HTML file

render(input = rmdPath, 
       output_format = html_document(), 
       output_file = 'my_report.html', 
       output_dir = '.')


#---- 
# Example 3: Customization

# Add an additional argument to html_document to add styles

styled <- T

render(input = rmdPath, 
       output_format = html_document(css = cssPath), 
       output_file = 'my_custom_report.html', 
       output_dir = '.')
