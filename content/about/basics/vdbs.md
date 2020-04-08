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

[**Teiid Basics**](..) &nbsp;&nbsp; < &nbsp;&nbsp; **Virtual Databases** &nbsp;&nbsp; | &nbsp;&nbsp; [Schemas](../schemas) &nbsp;&nbsp; | &nbsp;&nbsp; [Data Services](../dataservices) &nbsp;&nbsp; | &nbsp;&nbsp; [Sources](../sources)

---
## The Virtual Database

A virtual database (or VDB) is a container for components used to integrate data from multiple data sources, so that they can be accessed in an integrated manner through a single, uniform API.  

---
## VDB Creation and Validation

In traditional Teiid development VDBs may be defined as a single file mixture of DDL and or XML, or a zip (.vdb) archive containing DDL and or XML along with other artifacts.

With Teiid Spring Boot a project does not need an explicit VDB, rather one can be inferred from the configured sources.

With Teiid on OpenShift you define your VDB using DDL directly in a custom resource definition file.

VDBs can contain one or more schemas representing the information to be integrated and exposed to consuming applications. Schemas must be in a valid state in order for the VDB to be used for data access. Validation of a single schema means that it must be in a consistent and complete state, meaning that there are no "missing pieces" and no references to non-existent entities. Validation of multiple schema checks that all inter-schema dependencies are present and resolvable.

<div>
<img width="503" height="256" src="/images/teiid-queryengine.png" frameborder="2" ></img>
</div>

---
## VDB Metadata

A VDB primarily contains information about [sources and views](../schemas) that transform your data into exactly what you need.

VDBs contain two primary varieties of schema types - source or physical and virtual or view schemas. Source schemas represent the structure and characteristics of physical data sources, whereas view schemas represent the structure and characteristics of structures you want to expose to your applications.

A VDB will also contain metadata at a database level scope.  This includes things like domain types, [source related metadata](../sources), vdb level properties, data role creation, etc.

---
## Deploying a VDB for Data Access

After a VDB is defined, it must be deployed with the Teiid runtime to be accessed. 

* For [Teiid WildFly](/teiid_wildfly), the VDB needs to be deployed to a server in a process that is similar to a JEE WAR deployment.
* For [Teiid Spring Boot](/springboot) the VDB is run as a standalone Spring Boot application.
* For [Teiid on OpenShift](/teiid_cloud) you use an OpenShift client tool, such as oc, to add the custom resource to your instance.

If there are no errors during deployment and underlying data sources are configured correctly, then VDB will be accessible to your client application.

---
## Accessing a VDB

Once VDB is deployed, your VDB can be accessed through Teiid JDBC-SQL, the PostgreSQL protocol, OData, or REST.

---
## Teiid Designer

For those using Teiid WildFly, you may use Teiid Designer a Eclipse-based GUI tool can be used to create VDBs. This Eclipse-based tool lets you not only define sources and import metadata and statistics from them, but also allows you to define relational and XML or JSON views on top of those sources. This allows you to abstract the structure of the information you expose to and use in your applications from the underlying physical data structures.  In Teiid Designer your schemas are also called models.

VDBs can be tested in Teiid Designer by issuing SQL queries in the SQL Explorer perspective. In this way, you can iterate between defining your integration models and testing them out to see if they are yielding the expected results.

Your VDB must define its Translator and Resource Adapter with all source models in order to be executable.
