sponge-project
==============

sponge-project is the development environment for `sponge`.

`sponge`
--------

`sponge` is a cloud-based data management service for end users. It provides user-friendly tools for acquiring, storing, using and sharing data sets ranging from small to very large in size.

Architecture
------------

The architecture of `sponge` is highly modular.  It consists of a data module, input modules and output modules, managed via a web-based control panel.  The input and output modules are the visible part of `sponge`, and include acquisition, reporting and analysis tools.

Modules are loosely coupled via a RESTful (or at least RESTish) API, mainly PUT messages sent from input streamers to the database module and GET messages sent from output streamers to the database module, with appropriate responses from the database module in each case. 

More interesting than the application architecture perhaps is the way it is virtualized.  Particular modular configurations (data sources, filters, analytics, queries, reports) are created and deployed on demand.  Such a configuration is called, naturally, a **sponge**.  The `sponge` service is simply a way to create, use, archive and share **sponge** data objects.

The following describes the three module categories (data, input and output) comprising the `sponge` platform.

### data module

A data module is essentially a database with a web api.  A **sponge** object includes a single data module, but different **sponge** objects can have different data modules.

### input modules

An input module manages a stream of updates to the data module. 

### output modules

An output module sends requests to the data module and accepts a stream of data in response.







