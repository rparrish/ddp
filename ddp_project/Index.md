---
title       : Motor Trend Cars 
subtitle    : a simple Shiny application
author      : Rollie Parrish
job         : Coursera -  Developing Data Products
framework   : io2012         # {io2012, html5slides, shower, dzslides, ...}
highlighter : highlight.js  # {highlight.js, prettify, highlight}
hitheme     : tomorrow      # 
widgets     : []            # {mathjax, quiz, bootstrap}
mode        : selfcontained # {standalone, draft}
knit        : slidify::knit2slides
---

<style>
.title-slide {
  background-color: #F5F7FF;
}
</style>


## Overview

 - This application displays a boxplot of the miles per gallon  
by number of cylinders or gears. 
 - Intended use is for Eploratory Data Analysis of the mtcars dataset (included in R.)

--- 
   
## User Controls

Use the radio buttons to select the desired variable.

![alt text](ui.png)

---
## Results

The boxplot will update based on which variable is selected.

![alt text](results.png)

---


## Embedded R code

This presentation was generated on   

```r
Sys.Date()
```

```
## [1] "2015-03-19"
```











