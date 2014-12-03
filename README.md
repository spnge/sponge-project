`sponge-project`
================

`sponge-project` is the development environment for **sponge**.

What is **sponge**?
-------------------

**sponge** is a cloud-based data management service for end users. It provides user-friendly tools for acquiring, storing, using and sharing data sets ranging from small to very large in size.

What is `sponge-project`?
-------------------------

`sponge-project` contains the source code, libraries, tests, resources, build scripts and other files needed to develop, build, test and run **sponge**.  Not all the source code is in the `sponge-project` repository, but `sponge-project` has scripts to clone the repositories containing the rest of the **sponge** source code.

Getting started
---------------
1. Make sure you have a few essential pieces of software installed:
    * java JRE 1.7 or greater
    * git
    * a modern web browser (e.g. Chrome, Firefox, Safari)

2. From a terminal, clone the `sponge-project` repo:
```
    git clone https://github.com/spnge/sponge-project.git
```
3. Go to the `sponge-project` directory and launch the project:
```
    cd sponge-project
    ./run.sh
```
4. Open a browser and go to `localhost:7878`.  If all goes well, you will see a control panel with functions for setting up, building, testing and running **sponge**.


More info
---------

[sponge technical overview](docs/sponge-tech.md)

