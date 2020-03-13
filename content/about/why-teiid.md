---
bref: ""
date: 2017-05-19T14:40:12+01:00
draft: false
menu:
  sidenav:
    name: Why Teiid
    weight: -400
    parent: About Teiid
sidebar: sidenav
title: "Why Teiid"
toc: true
weight: 20
---

[**About**](..) &nbsp;&nbsp; < &nbsp;&nbsp; **Why Teiid** &nbsp;&nbsp; | &nbsp;&nbsp; [**FAQ**](../faq) &nbsp;&nbsp; | &nbsp;&nbsp; [**Basics**](../basics) &nbsp;&nbsp; | &nbsp;&nbsp; [**Project History**](../history)

**1\. Familiar Interfaces**

<span class="product">Teiid</span> offers very familiar interfaces: JDBC/ODBC/OData/REST.

Every Java developer is familiar with JDBC access to data sources.  It is also expected by many BI and other tools.  With Teiid you can use JDBC to access any supported source - and integrate across them.

Teiid's JDBC driver:
*   provides the JDBC 4.0 API
*   designed for high performance, utilizing batching, read-ahead, and more
*   has been vetted with many leading tools

It's actually a bit of a shortcut to say ODBC access.  What Teiid provides is actually an interface that emulates the PostgreSQL Database.  It has been vetted to work with PostgreSQL ODBC (and JDBC drivers) along with access from several platforms including Node.js. SQLAlchemy, and tools such as QGIS.

[OData](https://www.odata.org/) access provides a turn-key way to expose your virtual database as a service.  It is a well supported standard in the Microsoft and Salesforce ecosystems.

**2\. Familiar Query Language: SQL**

Want to query non-SQL sources in the same way you do with SQL sources? With Teiid, you can! You can access data from any types of sources, and interact with those sources using <u>a single flavor of SQL</u> - even if the native sources do not understand SQL!

*   DML SQL-92 support (with select SQL-99 and later features)
*   Issue SQL to any data source -- see currently supported sources
*   Level the data access playing field, using one version of SQL dialect, scalar functions, and datatypes

**3\. Multiple Sources Look Like One**

With Teiid, you can join and union data that resides in very dissimilar data sources. Multiple sources suddenly look like a _single_ source to your application.

*   Joins across data sources
*   Unions across data sources

**4\. Easy To Deploy**

The Teiid query engine is available for [several runtimes](/teiid_runtimes) and can be run on [OpenShift](/teiid_cloud).

**5\. Eliminate Hand-coded Data Access Logic**

Real applications often access more than one data source. We know that. Teiid technology from MetaMatrix has been in the business of enterprise data integration since 1999\. Many of you have built your own frameworks to handle integrating multiple sources, and have realized the difficulty of doing that in a generic manner that performs and scales well under real use conditions. Now you can retire your custom frameworks and hand-coded logic, and use a dedicated query component for all your data access needs. This lets you focus on the logic on top of the data access layer rather than the nuts and bolts of accessing heterogeneous data uniformly.

*   _Cheaper_ - than hand-coding and maintaining hand-coded integration, and re-inventing integration logic on every project
*   _Better_ - than non-optimized integration logic that does not make use of a real query engine
*   _Faster_ - to implement your projects, leveraging the integration logic already built into Teiid, and reusing that logic on other projects

**6\. Battle Tested - and Improving**

You don't want to be a guinea pig for someone's "product" experiments. Don't worry - with Teiid, you won't have to. Teiid is a component form of the query engine that is the heart of the JBoss Enterprise Data Services Platform (JBEDSP), which is used by large commercial organizations, independent software vendors, and many federal agencies, including intelligence agencies responsible for protecting citizens in the U.S. and other countries. These are organizations that cannot and do not play with toys, so you can have confidence that our products have been put through the ringer a number of times.

*   Used by Fortune 500 companies and Government Intel agencies
*   Used by independent software vendors
*   Large data sets, small data sets, data sets with quirky characteristics
*   Relational data, XML data, and data from sources you've never even heard of!

**7\. Optimized**

Part of being battle-tested is operating at expected levels of performance in a wide variety of enterprise solutions. Teiid accounts for the unique requirements of integrating information _across_ disparate data sources.

*   Cost-based optimizer
*   Accounts for federating data across heterogeneous systems
*   Caches result sets for user queries and queries to sources

**8\. Scriptable Integration**

Teiid WildFly comes with an administrative shell that allows programatic access to administrative features.

**9\. Works Like a Charm - Fast**

Your time is precious - we know that. You can't waste your time investigating every new-fangled product and solution marketed to you. With Teiid, you don't have to. In 30 minutes, you can demonstrate to yourself that you can issue federated queries against 2 of your own databases.

*   [Teiid on OpenShift Examples](https://github.com/teiid/teiid-openshift-examples)
*   [30 minutes to get started with Teiid WildFly](https://github.com/teiid/teiid-wildfly-quickstarts)

**10\. Tip of the Iceberg**

Still not convinced? What if we told you that all this was merely the tip of the iceberg? That's right - there's more! Not only can you do more with the Teiid query engine, but everything you do can be leveraged and extended with custom logic - anything from additional sources to rewriting queries.