SISBID 2018 Module 2: Reproducible Research
================
Keith Baggerly and Karl Broman
July 16-18, 2018

-   [Instructors](#instructors)
-   [Notes for Participants](Resources/notes_for_participants.md)
-   [Course Goals](Resources/course_goals.md)
-   [Homework](Resources/homework.md)
-   [Cheat Sheets](#cheat-sheets)
-   [Course Syllabus and Lecture Materials](#course-syllabus-and-lecture-materials)
    -   [Day 1, Jul 16, 2018](#day-1-jul-16-2018)
        -   [Session 1, 8:30-10](#session-1-830-10)
        -   [Session 2, 10:30-12](#session-2-1030-12)
        -   [Session 3, 1:30-3](#session-3-130-3)
        -   [Session 4, 3:30-5](#session-4-330-5)
    -   [Day 2, Jul 17, 2018](#day-2-jul-17-2018)
        -   [Session 5, 8:30-10](#session-5-830-10)
        -   [Session 6, 10:30-12](#session-6-1030-12)
        -   [Session 7, 1:30-3](#session-7-130-3)
        -   [Session 8, 3:30-5](#session-8-330-5)
    -   [Day 3, Jul 19, 2017](#day-3-jul-19-2017)
        -   [Session 9, 8:30-10](#session-9-830-10)
        -   [Session 10, 10:30-12](#session-10-1030-12)
-   [Previous Years](#previous-years)
-   [Recommended Reading/Browsing](#recommended-readingbrowsing)
    -   [General](#general)

Instructors
===========

This module is part of the [Summer Institute in Statistics for Big Data](https://www.biostat.washington.edu/suminst/sisbid)!

Taught by

Keith A. Baggerly <br/> <kabagger@mdanderson.org>

and

[Karl Broman](http://kbroman.org) <br/> <kbroman@biostat.wisc.edu>

[Notes for Participants](Resources/notes_for_participants.md)
=============================================================

[Course Goals](Resources/course_goals.md)
=========================================

[Homework](Resources/homework.md)
=================================

Cheat Sheets
============

Karl's [Software Carpentry Course](https://kbroman.wordpress.com/2015/04/29/cheat-sheets-for-r-based-software-carpentry-course/)

These are from RStudio's [list](https://www.rstudio.com/resources/cheatsheets/)

-   [Rmarkdown](http://www.rstudio.com/wp-content/uploads/2016/03/rmarkdown-cheatsheet-2.0.pdf); there's also a [reference guide](http://www.rstudio.com/wp-content/uploads/2015/03/rmarkdown-reference.pdf)
-   [Package Development/Devtools](http://www.rstudio.com/wp-content/uploads/2015/06/devtools-cheatsheet.pdf)

There are many other sheets there (including some for user contributions and translations), so check it out!

These are from GitHub

-   [Git/GitHub](https://services.github.com/on-demand/downloads/github-git-cheat-sheet.pdf)
-   [Git](https://education.github.com/git-cheat-sheet-education.pdf)
-   [Links to Translations](https://services.github.com/resources/cheatsheets/)
-   [More Resources](https://help.github.com/articles/git-and-github-learning-resources/)

Course Syllabus and Lecture Materials
=====================================

Day 1, Jul 16, 2018
-------------------

### Session 1, 8:30-10

**Lecture 0, Basic Intro, Keith, 5-10 min**

Introduction to the course, administration, course goals

Definitions - reproduction vs replication

[slides](Slides/2018_SISBID-RR_00_basic_intro.pdf), [printable version](Slides/2018_SISBID-RR_00_basic_intro_printable.pdf)

**Lecture 1, Intro and Common Problems, Karl, 40 min**

An introduction to reproducible research by way of commonly encountered problems

[slides](Slides/2018_SISBID-RR_01_introduction_slides.pdf), [printable version](Slides/2018_SISBID-RR_01_introduction_printable.pdf)

**Lecture 2, A Train Wreck, Keith, 40 min**

A case study describing just how bad things can get, with clinical implications

[slides](Slides/2018_SISBID-RR_02_train_wreck.pdf), [printable version](Slides/2018_SISBID-RR_02_train_wreck_printable.pdf)

### Session 2, 10:30-12

**Lecture 3, R Markdown and Literate Programming, Karl, 45 min**

[markdown lecture notes](Slides/2018_SISBID-RR_03_Rmarkdown.md), [Rmd example](Slides/2018_SISBID-RR_03_example.Rmd)

**Homework part 1, participants, 45 min**
Set up the analysis folder, write the preprocessing script in R markdown, compile to html / pdf / word

### Session 3, 1:30-3

**Lecture 4, R Packages, Keith, 45-60 min (much live demo)**

[slides](Slides/2018_SISBID-RR_04_r_packages.pdf), [printable version](Slides/2018_SISBID-RR_04_r_packages_printable.pdf)

**Homework part 2, participants, 30 min**

writing a basic package

### Session 4, 3:30-5

**Lecture 5, Big Jobs, Karl, 45 min (includes some workalong activities)**

Capturing exploratory data analysis, handling the challenges arising when data or jobs are big enough to make rerunning unpleasant or infeasible.

[slides](Slides/2018_SISBID-RR_05_bigjobs_slides.pdf), [printable version](Slides/2018_SISBID-RR_05_bigjobs_printable.pdf)

**Lecture 6, Make, Karl, 45 min**

A brief introduction to automation with [GNU Make](https://www.gnu.org/software/make/)

[slides](Slides/2018_SISBID-RR_06_make_slides.pdf), [printable version](Slides/2018_SISBID-RR_06_make_printable.pdf)

Day 2, Jul 17, 2018
-------------------

### Session 5, 8:30-10

**Lecture 7, Problems with Replication, Keith, 40 min**

A review of several factors which can make results harder to replicate (be seen again with new samples) vs hard to reproduce (starting from the same raw data)

[slides](Slides/2018_SISBID-RR_07_problems_w_replication.pdf), [printable version](Slides/2018_SISBID-RR_07_problems_w_replication_printable.pdf)

**Lecture 8, Git/GitHub 1: Sharing and RR, Keith, 50 min, mostly live**

Using Git/GitHub to share and track versioned files and workflows; using Git/GitHub in an RR workflow

[slides](Slides/2018_SISBID-RR_08_git_1_sharing.pdf), [printable version](Slides/2018_SISBID-RR_08_git_1_sharing_printable.pdf)

### Session 6, 10:30-12

**Lecture 9, Git/GitHub 2: Branching and Merging, Keith, 45 min**

Dealing with concurrent development, when things break, and conflicts

[slides](Slides/2018_SISBID-RR_09_git_2_branching.pdf), [printable version](Slides/2018_SISBID-RR_09_git_2_branching_printable.pdf)

**Homework, participants, 45 min**

Establishing a repo at GitHub. Posting your package to GitHub.

This session will be a mixture of lecture and live demo.

### Session 7, 1:30-3

**Lecture 10, Collaborating with Git, Keith, 45 min**

Working with others, making comments, providing feedback, fixing errors

**Homework, participants, 45 min**

Working with your neighbor's repos

### Session 8, 3:30-5

**Homework, participants, 45 min**
Add comments and vignettes to your package on GitHub

**Lecture 11, Implementing RR at MDACC, Keith, 45 min**

A review of ongoing efforts within the biostat department at MD Anderson to produce reproducible reports, and how we took a report written a few years ago using a mix of R and Stata and revamped it in R/rmarkdown to emulate not just the results but also the "look and feel" of the initial MS word output. Hits on tables and figures in rmarkdown, references, reformatting headers.

[slides](Slides/2018_SISBID-RR_11_mdacc_start.pdf), [printable version](Slides/2018_SISBID-RR_11_mdacc_start_printable.pdf)

Day 3, Jul 19, 2017
-------------------

### Session 9, 8:30-10

**Lecture 12, Writing Good Reports, Keith, 45 min**

The "non-codeable" parts of reproducibility - trying to increase the odds your collaborators will understand what it is you're trying to do.

[slides](Slides/2018_SISBID-RR_12_good_reports.pdf), [printable version](Slides/2018_SISBID-RR_12_good_reports_printable.pdf)

**Homework, participants, 45 min**

Automating common tasks with templates - report structures, directory structures, and look and feel

### Session 10, 10:30-12

**Lecture 13, Summary and Wrapup, Karl, 45 min**

Maintaining the Mindset

[slides](Slides/2018_SISBID-RR_13_summary_slides.pdf), [printable version](Slides/2018_SISBID-RR_13_summary_printable.pdf)

**Final Class Discussion**

**Evals, participants, 5 min**

Previous Years
==============

Lectures from
[2016](https://github.com/SISBID/Module3/tree/master/Lectures_from_2016) and [2017](https://github.com/SISBID/Module3).

Videos from 2015:

[Session 01](https://uw.hosted.panopto.com/Panopto/Pages/Viewer.aspx?id=97d750ba-4e50-4d44-96bc-064d87c00869), [Session 02](https://uw.hosted.panopto.com/Panopto/Pages/Viewer.aspx?id=6760b204-c935-4e33-b93d-61530135f171), [Session 03](https://uw.hosted.panopto.com/Panopto/Pages/Viewer.aspx?id=7142af89-928b-4a36-9a49-4eac5f54fa99), [Session 04](https://uw.hosted.panopto.com/Panopto/Pages/Viewer.aspx?id=ef1d4817-9bb8-401c-8674-f4f8a6037a3d), [Session 05](https://uw.hosted.panopto.com/Panopto/Pages/Viewer.aspx?id=93615986-aea0-4986-ad24-4e7239df6aa9), [Session 06](https://uw.hosted.panopto.com/Panopto/Pages/Viewer.aspx?id=ad2cac1f-b51f-4bbb-9a37-57dbed4fdcdc), Sessions 07 and 08 were homework and demos, and not recorded, [Session 09](https://uw.hosted.panopto.com/Panopto/Pages/Viewer.aspx?id=876d0d9c-48aa-4755-939c-536c7352c26e), and [Session 10](https://uw.hosted.panopto.com/Panopto/Pages/Viewer.aspx?id=15515ce8-65a7-41e7-b339-c49157c7ad6a)

Recommended Reading/Browsing
============================

General
-------

-   [Christopher Gandrud, Reproducible Research with R and Rstudio, 2e (2015)](http://www.amazon.com/Reproducible-Research-Studio-Second-Chapman-ebook/dp/B010ACWGBI/ref=tmm_kin_title_0?_encoding=UTF8&sr=&qid=)
-   [Justin Kitzes et al, The Practice of Reproducible Research](https://www.amazon.com/Practice-Reproducible-Research-Data-Intensive-Sciences-ebook/dp/B075H9Y7W3/ref=mt_kindle?_encoding=UTF8&me=&qid=1530358798&dpID=51Q35-OA11L&preST=_SY445_QL70_&dpSrc=detail), [online version](https://www.practicereproducibleresearch.org/)
-   [Hadley Wickham, R Packages (2015)](http://www.amazon.com/R-Packages-Hadley-Wickham-ebook/dp/B00VAYCHL0/ref=pd_sim_351_6?ie=UTF8&refRID=1E8HS30WBHRCW45SEWXM), [online version](http://r-pkgs.had.co.nz/)
-   [Yihui Xie, Dynamic Documents with R and knitr, 2e (2015)](http://www.amazon.com/Dynamic-Documents-knitr-Second-Chapman-ebook/dp/B00ZBYPJEW/ref=tmm_kin_title_0?_encoding=UTF8&sr=&qid=)
-   [Karl Broman's Tools for RR Course](http://kbroman.org/Tools4RR/)
-   Other links: [`resources.md`](Resources/resources.md)
