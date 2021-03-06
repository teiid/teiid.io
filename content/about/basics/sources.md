---
bref: ""
draft: false
menu:
  sidenav:
    name: Sources
    weight: -394
    parent: Basics
sidebar: sidenav
title: "Sources"
toc: true
weight: 10
---

[**Teiid Basics**](..) &nbsp;&nbsp; < &nbsp;&nbsp; [Virtual Databases](../vdbs) &nbsp;&nbsp; | &nbsp;&nbsp; [Schemas](../schemas) &nbsp;&nbsp; | &nbsp;&nbsp; [Data Services](../dataservices) &nbsp;&nbsp; | &nbsp;&nbsp; **Sources**

Access to data sources in Teiid take two components.  A translator and a platform dependent access mechanism to provide source access.  A translator is represented in DDL as a foreign data wrapper (FDW).  The platform dependent access is abstracted in DDL the SERVER construct.  Together this access is been referred to as a Teiid connector.

---
## Translators

A Translator provides an abstraction layer between Teiid Query Engine and physical data source, that knows how to convert Teiid issued query commands into source specific commands and execute them. Depending upon the runtime (Spring Boot, WildFly, embedded, etc.) the source will have another abstraction such as a Resource Adapter that the translator interfaces with.  Translators also have smarts to convert the result data that came from the physical source into a form that Teiid Query engine is expecting.

Teiid provides various pre-built translators for sources like Oracle, DB2, SQL Server, MySQL, PostgreSQL, File etc.

A Translator also defines the capabilities of a particular source, like whether it can natively support query joins (inner joins, cross joins etc) or support criteria.

A Translator along with its source abstraction is always must be configured on a **Source Schema**. Cross-source queries issued against a VDB running in Teiid result in source queries being issued to translator, which interact with the physical data sources.

A Translator is defined by using one of the default pre-built ones, or you can override the default properties of the pre-built ones to define your own. The tooling will provide mechanisms to define override translators.

Check out [**Developer's Guide**](http://teiid.github.io/teiid-documents/master/content/dev/Developers_Guide.html) on how to create a custom Translator that works with your source.

### Translator Capabilities

Translator capabilities define what processing each translator/source combination can perform. For example, most relational sources can process joins and unions, whereas when processing delimited text files these operations cannot be performed by the resource adaptor or the "source" (in this case, the file system).

Capabilities are used by the Teiid query engine to determine what subsets of the overall federated query plan can be pushed down to each source involved in the query.

Translator capabilities define the capabilities of a source in terms of language features (joins, criteria, functions, unions, sorts, etc). In addition, the source schema defined in a virtual database may specify additional constraints at the metadata level, such as whether a column can be used in an exact match or wildcard string match, whether tables and columns can be updated, etc. In combination, these features can be used to more narrowly constrain how users access a source.

---
## Configuring Source Access

Teiid DDL has a consistent abstraction called a SERVER to wire together your source access with a given translator / foreign data wrapper.  However how the source is actually configured will be platform / runtime dependent and may require additional libraries or drivers. 

---
### Drivers

Source access commonly requires a third-party driver that is not part of Teiid.  There are instructions on how to supply drivers to WildFly or include them via your maven project for Teiid Spring Boot.  If you are using Teiid on OpenShift with a DDL CRD, then don't worry we'll handle it for you.

---
## Resource Adaptors

In runtimes with Java Connector Architecture (JCA) support, such as WildFly, a Resource Adaptor provides the connectivity to the physical data source. This also provides way to natively issue commands to the source and gather results. A Resource Adaptor can be a RDBMS data source, Web Service, text file, connection to main frame or to a custom source you defined. This is often is [JCA](http://java.sun.com/j2ee/connector/)&nbsp;Connector, however there is no restriction how somebody provides the connection semantics to the Translator.

However, if your source needs participate in distributed XA transactions, then this must be a JCA connector. Other than providing transactions, JCA defines how to do configuration, packaging and deployment. This also provides a standard interaction model with the Container, connection pools etc.  It can be used for more than just Teiid data integration purposes.

Typically Resource Adaptor configuration information contains user-ids, passwords, URLs to the physical data sources. This information is not stored with the VDB. These are automatically created by Designer for development purposes, however user need to migrate or create new ones for the production environment themselves using the provided tools like the Admin Console.

Check out the [**Developer's Guide**](http://teiid.github.io/teiid-documents/master/content/dev/Developers_Guide.html) on how to create a custom Resource Adaptor.

### Resource Adaptors and Security

It is possible to use the security system of individual data sources if this is desired. When the resource adapter is JCA connector, they can be configured with separate "security-domain" in their "-ds.xml" files in the JBoss AS. However, calling thread need to login into the context before they use Teiid.

### Administering

In <span class="product">Teiid</span>, Translators and Resource adaptors can be configured and monitored using the Teiid Console, or using the [Teiid Server Administrative API](/teiid_wildfly/docs/index.html).
