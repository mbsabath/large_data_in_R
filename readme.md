[![Binder](https://mybinder.org/badge_logo.svg)](https://mybinder.org/v2/gh/mbsabath/large_data_in_R/HEAD?urlpath=rstudio)

Large Data in R: README
================

This repository contains all course materials for the Large Data in R
Workshop. You can clone it to your personal computer to be able to
easily follow along and run the exercises.

You’ll need to have some basic skill with git to be able to do this.
Instructions for setting up git are
[here](https://docs.github.com/en/github/getting-started-with-github/set-up-git).

## Environment Set Up

**PLEASE DO THIS BEFORE THE WORKSHOP**

There are multiple ways to set up your environment for this course. Our
focus will be more on the concepts underlying Large Data in R and how to
work through problems, rather then executing specific blocks of code.
However if you’d like to follow along and ensure that you have all
packages you need installed, I’ve provided a `conda` environment in this
repo for your use.

Note: This course assumes that you are comfortable using the command
line and are working on a unix based system (MacOS or Linux). The
assistance I’ll be able to provide for attendees with windows computers
will be limited.

#### STEP 0 - Clone This Repo

If you’re reading this, you’ve found the git repository with materials
for this course. The easiest way to download all of the materials and
have them properly arranged is to clone this repo. To do this run the
following command

    git clone git@github.com:mbsabath/large_data_in_R

This will create a local copy of this repo on your computer. `cd` to
that directory for the rest of this setup.

#### STEP 1 - Install Conda

If you’re working on a computer that doesn’t currently have conda
installed, you can install miniconda [using this
link](https://docs.conda.io/en/latest/miniconda.html). I recommend the
Python 3.9 version.

#### STEP 2 - Create The Environment

Included in the repo is the file `large_data_env.yml`. This file lists
the packages needed for this course. Conda is great for environment
management and environment sharing since it handles installing all of
the dependencies needed, and can support set up on multiple operating
systems. Creating conda environments for your projects is a separate
subject, but is a great way to make your research projects easy for
others to use and to support reproducibility. To install this
environment run:

    conda env create -f large_data_env.yml

You will be prompted to download and install a number of packages,
please install things as prompted.

If everything worked, you should see an environment named
`large_data_in_R` listed when you run

    conda env list

#### STEP 3 - Run R and Install One Additional Package

To activate the environment, run the following command:

    source activate large_data_in_R

If this is successful, your terminal prompt will change to look
something like this:

    (large_data_in_R) <username> large_data_in_R %

To run Rstudio using the environment, it’s important to run it from the
terminal. To start Rstudio from the terminal, enter

    rstudio

from the terminal where you’ve activated the envionment. The rstudio
window that opens will have all required pacakges already installed,
with the exception of the `chunked` package, which is not available
through conda. To install that package, please run:

``` r
install.packages("chunked")
```

Once `chunked` is installed, your environment is good to go!
