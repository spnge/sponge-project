sponge-project
==============

sponge-project is the development environment for `sponge`.

`sponge`
--------

`sponge` is a cloud-based data management service for end users. It provides user-friendly tools for acquiring, storing, using and sharing data sets ranging from small to very large in size.

Architecture
------------

The architecture of `sponge` is highly modular.  It consists of a central database module and two sets of plugins: input streamers and output streamers.  The plugins are the visible part of `sponge`, and including the acquisition, reporting and other tools that comprise the `sponge` platform.

More interesting than the actual architecture is the user's experience of it.  Particular modular configurations (data sources, filters, analytics, queries, reports) are themselves persisted for easy archiving, accessing and sharing.



