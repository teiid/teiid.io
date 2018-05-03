---
bref: ""
draft: false
menu:
  sidenav:
    name: Virtual Databases
    weight: -398
    parent: Basics
sidebar: sidenav
title: "Virtual Databases"
toc: true
weight: 10
---

[**Teiid Basics**](..) &nbsp;&nbsp; < &nbsp;&nbsp; **Virtual Databases** &nbsp;&nbsp; | &nbsp;&nbsp; [Models](../models) &nbsp;&nbsp; | &nbsp;&nbsp; [Data Services](../dataservices) &nbsp;&nbsp; | &nbsp;&nbsp; [Connectors](../connectors)

<div>
<img width="356" height="319" src="http://static.jboss.org/teiid/images/teiid-vdbinternals.png" frameborder="2" hspace="40" ></img>
</div>

---
## The Virtual Database

A virtual database (or VDB) is a container for components used to integrate data from multiple data sources, so that they can be accessed in an integrated manner through a single, uniform API.  

A VDB contains models, which define the structural characteristics of data sources, views, and Web services.


---
## VDB Creation and Validation

VDBs may be defined as a single file mixture of DDL and or XML, or a zip (.vdb) archive containing DDL and or XML along with other artifacts.

Teiid Designer, a Eclipse-based GUI tool can be used to create VDBs. This Eclipse-based tool lets you not only define source models and import metadata and statistics from them, but also allows you to define relational and XML or JSON views on top of those sources. This allows you to abstract the structure of the information you expose to and use in your applications from the underlying physical data structures.

VDBs can contain one or more models representing the information to be integrated and exposed to consuming applications. Models must be in a valid state in order for the VDB to be used for data access. Validation of a single model means that it must be in a self-consistent and complete state, meaning that there are no "missing pieces" and no references to non-existent entities. Validation of multiple models checks that all inter-model dependencies are present and resolvable.

A VDB must always be in a complete state, meaning that all information is contained within the VDB itself -- there are no external dependencies.
<div>
<img width="503" height="256" src="http://static.jboss.org/teiid/images/teiid-queryengine.png" frameborder="2" ></img>
</div>

---
## Deploying a VDB for Data Access

After a VDB is defined, it must be deployed to the Teiid runtime to be accessed. 

*   The VDB needs to be deployed to a Teiid Server, if there are no errors during deployment and underlying data sources are configured correctly, then VDB will be accessible to your client application.

---
## Accessing Multiple Sources Through a VDB

Once VDB is deployed, your VDB can be accessed through JDBC-SQL, SOAP (Web Services), SOAP-SQL, or XQuery.

---
## VDBs, Translators and Resource Adaptors


VDBs contain two primary varieties of model types - Source and View models. Source models represent the structure and characteristics of physical data sources, whereas view models represent the structure and characteristics of abstract structures you want to expose to your applications.

Source models must be associated with a Translator and a Resource Adaptor. A Translator provides a abstraction layer between Teiid Query Engine and physical data source, that knows how to convert Teiid issued query commands into source specific commands and execute them using the Resource Adaptor. It also have smarts to convert the result data that came from the physical source into a form that Teiid Query engine is expecting.

A Resouce Adaptor provides the connectivity to the physical data source. This also provides way to natively issue commands and gather results. A Resource Adaptor can be a RDBMS data source, Web Service, text file, connection to main frame etc. This is often is [JCA](http://java.sun.com/j2ee/connector/) Connector.

You can define configuration for Translators and Resource Adaptors in Teiid Designer.  Once defined, Translator information along with the JNDI name of the Resource Adaptor is stored with a VDB, so that when a VDB is exchanged, the existing settings can be used.
Typically Resource Adaptor configuration information contains user-ids, passwords, URLs to the physical data sources. This information is not stored with the VDB. These are automatically created by Designer for development purposes, however user need to migrate or create new ones for the production environment themselfs using the provided tools like Admin Console.

---
## VDB Execution in Teiid Designer

VDBs can be tested in Teiid Designer by issuing SQL queries in the SQL Explorer perspective. In this way, you can iterate between defining your integration models and testing them out to see if they are yielding the expected results.

Your VDB must define its Translator and Resource Adapter with all source models in order to be executable.





