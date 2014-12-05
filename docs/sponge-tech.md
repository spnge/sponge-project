sponge technical overview
=========================

Architecture
------------

The architecture of **sponge** is highly modular.  It consists of a collection of loosely coupled services which are accessed and configured via a simple web application.  The services fall broadly into three categories: services that acquire and filter data; services that persist data; and services that extract and use data.

Services are connected via document streams.  In simplified form, input services stream documents to persistence services which stream documents to output services.  This leaves out all the interesting stuff (how input services get their documents, what output services do with their documents) but accurately describes the high level architecture.

What makes the horizontal connections among services loose is that they are one-way and nontransactional.  Each transfer of a document succeeds or fails on its own, independently of any other transfer.  Two-way communication occurs by having two connections, one in each direction.  Transactional control is possible, but must implemented by logic in the services.  The rationale for this is that the knowledge required to optimally organize documents into transactions exists only at higher levels, and handling it in the data channel is grossly inefficient.

`sponge` Objects
----------------

The more interesting looseness is vertical, between the  higher level of user experience and the lower level of implementation.  Users do not engage directly with services.  Rather, users engage with abstract service configuration objects, which specify service requirements, settings and parameters. Such an abstract service configuration object is called a `sponge`.

`sponges` are mapped to actual services only when activated, and only as needed.  This lazy service mapping provides tremendous efficiency and scalability.  At runtime, the persistence service might be mapped to some rows in a database table, or an entire table, or an entire database.  And the user need not know. 

In addition to configuration information, a `sponge` caches state information generated when it is deployed.  In particular, this includes data that has been acquired and persisted.  To a user, a `sponge` is a living document that creates itself by absorbing data from some source (web site, file, api) and safekeeps it for further use.
      

Document Streams
----------------

A document stream is a logical connection over which data objects encoded in JSON are transferred.  Conceptually a stream is unidirectional and continuous; documents flow from producer to consumer, and the connection stays open as long as the `sponge` is active.  The actual connection may well be bidirectional and intermittent, however.

Services
--------

The following describes the three service categories (data, input and output) embodied in a `sponge` object.

### data service

At the heart of a `sponge` object is a data service.  Conceptually, a data service is a consumer of input document streams and a producer of output document streams.  Input streams provide data to be persisted and updates to that data.  Output streams are generated in response to queries and consist of data extracted from persisted data.

Internally, a data service is likely to use a database as its persistent store.  A no-sql document store such as Mongo is a natural fit for the sponge data model.

### input services

An input service generates or processes a stream of documents to the data service. 

### output services

An output service sends requests to the data service and accepts document streams in response.



