sponge technical overview
=========================

Architecture
------------

The architecture of **sponge** is highly modular.  It consists of a data module, input modules and output modules, accessed and configured via a simple web application.  The input and output modules are the visible part of **sponge**, and include acquisition, reporting and analysis tools.  The data module is not directly visible to the user.  It provides persistence, retrieval and query capabilities.

Modules are coupled via loose data connections, implemented RESTfully over http or RESTishly over websockets.  What makes the connections loose is that they are nontransactional; each transfer of a data object succeeds or fails on its own, independently of any other transfer.  Transactional support is possible, but must implemented in the application.  The benefit of this extra work is superior performance at the lower level.  

More interesting than the application architecture perhaps is the way it is virtualized.  Particular modular configurations (data sources, filters, analytics, queries, reports) are created and deployed on demand.  Such a configuration is called, naturally, a `sponge`.  The **sponge** service is simply a way to create, use, archive and share `sponge` data objects.


Modules
-------

The following describes the three module categories (data, input and output) comprising the **sponge** instantiaton pattern.

### data module

A data module is essentially a database with a web api.  A `sponge` object includes a single data module, but different `sponge` objects can have different data modules.

Conceptually, a data module is a consumer of input streams and a generator of output streams.  The input streams are streams of documents.  If a document has an id field, and a document with that id already exists, the existing document is updated; otherwise, the input document is added to the database.

### input modules

An input module manages a stream of updates to the data module. 

### output modules

An output module sends requests to the data module and accepts a stream of data in response.







