
<!-- README.md is generated from README.Rmd. Please edit that file -->

# Welcome to `sheetcheatR`

![](https://img.shields.io/badge/lifecycle-developing-red)

<!-- badges: start -->
<!-- badges: end -->

The goal of `sheetcheatR` is to provide R exercises modeled after
RStudio’s excellent cheatsheets. Check them out
[here](https://www.rstudio.com/resources/cheatsheets/).

## Installation

You can install the development version of `sheetcheatR` like so:

``` r
install.packages("remotes")
remotes::install_github("mjfrigaard/sheetcheatR")
```

## Example

This is a basic example:

``` r
library(sheetcheatR)
library(learnr)
## basic example code
learnr::run_tutorial("import", package = "sheetcheatR")
```

# Get started

If you’re new to R, I recommend starting with the following tutorials:

|                       |                                                  |                                                                   |
|-----------------------|--------------------------------------------------|-------------------------------------------------------------------|
| **Name**              | **Description**                                  | **Run with…**                                                     |
| Atomic Vectors        | *introduction to R’s foundational data object*   | `learnr::run_tutorial("atomic-vectors", package = "sheetcheatR")` |
| S3 Vectors            | *factors, dates, datetimes, and difftimes*       | `learnr::run_tutorial("S3-vectors", package = "sheetcheatR")`     |
| Rectangular data in R | *matrices, data.frames, tibbles, and data.tabes* | `learnr::run_tutorial("rectangles", package = "sheetcheatR")`     |

## Cheatsheet Tutorials

Below are the completed tutorials in the package.

<table style="width:100%;">
<colgroup>
<col style="width: 20%" />
<col style="width: 59%" />
<col style="width: 19%" />
</colgroup>
<thead>
<tr class="header">
<th><strong>Name</strong></th>
<th><strong>Description</strong></th>
<th><strong>Run with…</strong></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><strong>Data import with <code>readr</code>, <code>readxl</code>,
and <code>googlesheets4</code></strong></td>
<td><em>These exercises cover importing data with the
<strong><code>readr</code>, <code>readxl</code>,</strong> and
<strong><code>googlesheets4</code></strong> packages.</em></td>
<td><pre><code>learnr::run_tutorial(&quot;import&quot;, package = &quot;sheetcheatR&quot;)</code></pre></td>
</tr>
<tr class="even">
<td><strong>Data visualization with <code>ggplot2</code> cheatsheet
(part 1)</strong></td>
<td><em>These exercises cover the basics of <code>ggplot2</code>,
aesthetics, graph primitives, and single variable graphs.</em></td>
<td><pre><code>learnr::run_tutorial(&quot;ggp2-p1&quot;, package = &quot;sheetcheatR&quot;)</code></pre></td>
</tr>
<tr class="odd">
<td><strong>Tidying your data with <code>tidyr</code> (part
1)</strong></td>
<td><em>These exercises cover an overview of <code>tibbles</code> and
reshaping tidy data using the <code>pivot_</code> functions, splitting
and combining columns, and dealing with missing and incomplete
data.</em></td>
<td><pre><code>learnr::run_tutorial(&quot;tidyr-p1&quot;, package = &quot;sheetcheatR&quot;)</code></pre></td>
</tr>
<tr class="even">
<td><strong>Data Transformation with <code>dplyr</code> (part
1)</strong></td>
<td>These exercises cover pipes (<code>|&gt;</code> and
<code>%&gt;%</code>), counting, grouping/un-grouping, summarizing, and
row-wise operations.</td>
<td><pre><code>learnr::run_tutorial(&quot;dplyr-p1&quot;, package = &quot;sheetcheatR&quot;)</code></pre></td>
</tr>
</tbody>
</table>

## Extra tutorials

*These tutorials aren’t covered in a specific cheat sheet. They either
borrow from multiple sheets or cover/expand on more foundational
topics.*

<table style="width:99%;">
<colgroup>
<col style="width: 13%" />
<col style="width: 25%" />
<col style="width: 59%" />
</colgroup>
<thead>
<tr class="header">
<th>Name</th>
<th>Description</th>
<th>Run with…</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td>Command line</td>
<td>basic command line skills</td>
<td><pre><code>learnr::run_tutorial(&quot;command-line&quot;, package = &quot;sheetcheatR&quot;)</code></pre></td>
</tr>
</tbody>
</table>
