SISBID 2018 RR Homework
================
Keith Baggerly and Karl Broman
2018-07-15

-   [Using R Markdown (Day 1, Session 2)](#using-r-markdown-day-1-session-2)
-   [Writing R Packages (Day 1, Sessions 3/4)](#writing-r-packages-day-1-sessions-34)
-   [Using Make (Day 1, Session 4)](#using-make-day-1-session-4)
-   [Using Git/GitHub (Day 2, Session 1)](#using-gitgithub-day-2-session-1)
-   [Branching and Merging with Git/GitHub (Day 2, Session 2)](#branching-and-merging-with-gitgithub-day-2-session-2)
-   [Collaborating with Others Using GitHub (Day 2, Sessions 3/4)](#collaborating-with-others-using-github-day-2-sessions-34)
-   [Writing Templates (Day 3, Session 1)](#writing-templates-day-3-session-1)

Using R Markdown (Day 1, Session 2)
===================================

Set up a folder to hold files for an initial data analysis. Add subfolders you think are appropriate.

Summarize your goals for the course. Experiment with using *emphasis*, **bold face**, and `computer font` to describe different topics of interest.

Open RStudio/Help/Markdown Quick Reference and read through the topics covered (these are most of the things I use day to day).

Add a live link to a paper you find interesting, and summarize why you like it.

Produce md (github\_document), html, pdf, and word versions of your file. How big are these?

Describe some of the relative advantages of the different types of output formats (size, pagination, identifying differences from one version to the next, etc).

Add sections to your writeup.

Working with the YAML, set things up to generate a table of contents.

Add (and name!) a code chunk to do something basic. Experiment with chunk options `echo=FALSE`, and `eval=FALSE`. Why might you want to use these? Explore the other options you see with R's autocompletion. Do you have an idea what most of them might do?

In the html output, experiment with adding `code_folding: hide` to the YAML. Do you prefer this formatting? Why isn't this an option with the other output types?

The code in a named code chunk (e.g., "chunk1") can be invoked in a later chunk by referring to `<<chunk1>>` in the later chunk.

Writing R Packages (Day 1, Sessions 3/4)
========================================

Using RStudio, open a new package project, giving it a name you find relevant.

load the `devtools`, `roxygen2`, `rmarkdown`, and `knitr` libraries.

Edit the `DESCRIPTION` file.

Look at (but do not edit!) the `NAMESPACE` file. Then delete it (we'll let `devtools` rebuild this for us shortly).

Look at the contents of the `man/` and `R/` folders to see what's there.

In the `R/` folder, add a new R script describing the package, using `roxygen2` format.

Invoke `document()`. Check how the contents of the `man/` folder and the `NAMESPACE` and `DESCRIPTION` have changed.

Using the RStudio keyboard shortcut (`Cmd-Shift-B`), build and load your package. Check under the packages tab to confirm that your previously loaded packages (`devtools`, etc) are still loaded, and that your new package is listed and loaded.

Ask R about your package, using `?yourPackageNameHere`

Add a short function to your `R/` folder. Use `document()` to update the `man/` folder. Recompile your package and check the links.

Skim the vignette in the roxygen2 package on Generating Rd Files. What is the difference between the tags `examples` and `example`?

Add a function to autopopulate a new R project with folders you'd use regularly (e.g., R/, data/, results/). Use `here` to position these folders properly relative to the root of the project. In the roxygen2 comments, add an `import` tag for the `here` package; we'll mostly be using `here::here()`. Skim the roxygen2 vignette for `namespace` (esp under Imports) to clarify what R's doing here. When you document, build, and check this new function, how does the NAMESPACE file change?

Create a short vignette using `use_vignette()`. Invoke `build_vignette()` to produce an output file. Document and recompile.

Using `use_readme_md()`, add a `README` file to the top level of your package. Invoke `knitr` to produce a `.md` file from this. Document and recompile.

Using Make (Day 1, Session 4)
=============================

Returning to the writeup you produced before shifting to writing packages, write a makefile to produce different types of outputs from your various Rmd files. Add `make all` and `make clean` as targets within the makefile.

What happens if you run `make all` twice?

Using Git/GitHub (Day 2, Session 1)
===================================

Set up a new empty repo on GitHub. Set up a new Project in RStudio, linking it to your GitHub repo.

What files are in your project to begin with? What does the git pane show?

Add and commit the files you deem relevant.

Create a `.gitignore` file and add files you don't want to track regularly (e.g., pdf, word, or html output files) to this. Add and commit the `.gitignore` file.

For a recent project you've worked on, write a README.Rmd file, setting the output type to github\_document. What was the project about? What data were you working with? Are there relevant papers that have emerged that should be linked to?

Knit the README to produce README.md. Add and commit both versions of the README, and push them to GitHub. Does the README look useful? What other info would be useful?

Set up the folder structure you prefer. Generate a small dataset for plotting, e.g.

``` r
set.seed(123)

n_obs <- 100
small_data <- 
  matrix(rnorm(2 * n_obs), nrow = n_obs, ncol = 2)
colnames(small_data) <- c("x", "y")
small_data[1:10, "y"] <- 
  small_data[1:10, "y"] + 4
```

Save the data in a csv file in your preferred folder. Add a link to the csv file to your README. Add, commit, push.

Write a script to load and plot the data, adding some description of what you see. Use here to tell your script where to find the data. Add, commit, push.

Write either a make\_all.R script or a Makefile to run your first script above, leaving it general enough that adding another script would be trivial. Use here to specify where the outputs should go. Add, commit, push.

Edit the README to include links to your script and a brief description of your workflow. Add, commit, push.

Is this complete?

Set up a second new RStudio project, link it to the GitHub repo above, and pull. When you run the scripts, do you get the same results?

Suggest something you might do that would cause the results to be divergent.

Branching and Merging with Git/GitHub (Day 2, Session 2)
========================================================

On your machine, create a new development branch to add a second analysis script (e.g., producing color versions of the plot above); don't link this one to GitHub. Draft and compile your script. Add and commit.

Look at the Git History popup. Do you see how your development branch differs from master? Switch back and forth between the history for master and development to get a feel for the changes. Look for the additions (green highlighting) and deletions (reddish highlighting) in altered files (this is what git diff is doing).

Merge your development branch back into master. What do the history displays look like now? Prune this development branch, since you're done with it.

Set up another local (non GitHub) development branch. Change something in the development branch, and then change the same thing in the master branch in an incompatible way. Try to merge the development branch back into master. Resolve the merge conflict, and add and commit the final file with your revisions. What does the history look like now? Prune the branch when you're done with it.

Now add a development branch with a corresponding tracking branch for GitHub. Make changes to the development branch, and Add, Commit, and Push. Set up a pull request, adding a few comments. Accept (or reject) the pull request. Use pulls to update your local versions of the repo. When you're done with the development branch, prune it and the associated tracking branch.

Collaborating with Others Using GitHub (Day 2, Sessions 3/4)
============================================================

Get together with your neighbor (hi neighbor!)

Follow the instructions in Karl's homework posting on GitHub,

<https://github.com/kbroman/Tools4RR/blob/master/05_Git_Lab/git_lab.md>

Writing Templates (Day 3, Session 1)
====================================

Is there a common structure you want your reports to have (e.g., Introduction, Data and Methods, Results, and Conclusions)? Create a new package and include a template report in this form.

Once the package is loaded, use RStudio to create a new file in the desired form from the template. See <https://rstudio.github.io/rstudio-extensions/rstudio_project_templates.html> for file positioning.

Is there a folder structure you want to use repeatedly? How might you automate this process? You may want to browse ProjectTemplate <http://projecttemplate.net/getting_started.html> or the keithUtils package at GitHub <https://github.com/kabagg/keithUtils>.

Note: more support for templates is being developed by RStudio <https://rstudio.github.io/rstudio-extensions/rstudio_project_templates.html> but this currently requires the daily builds, as opposed to the stable (production) builds.

What types of reports are commonly used in your group/lab/department/institution? What would be required to produce reports in that form?
