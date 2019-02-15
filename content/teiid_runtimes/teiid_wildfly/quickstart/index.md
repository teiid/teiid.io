---
bref: ""
draft: false
menu:
  sidenav:
    name: Quickstart
    weight: -279
    parent: Teiid WildFly
sidebar: sidenav
title: "Teiid WildFly Quickstart"
toc: true
weight: 10
---

The Quickstart guide for data virtualization on a wildfly server using Teiid is documented at: http://github.com/teiid/teiid-wildfly-quickstarts.

This Quick Start Guide takes you through an introduction to the concepts important to Teiid, downloading the software, building and deploying a virtual database and integrating data sources. The goal is to provide you with examples that help explain how to use to Teiid in order to get you off the ground. It also introduces to some of the essential concepts of Teiid.

## Teiid Quickstarts

This Quick Start Guide takes you through an introduction to the concepts important to Teiid, downloading the software, building and deploying a virtual database and integrating data sources. The goal is to provide you with examples that help explain how to use to Teiid in order to get you off the ground.  It also introduces to some of the essential concepts of Teiid.

TIP: **Further Reading** - Please read http://teiid.github.io/teiid-documents/master/content/[Teiid Documentation] to understand different terminologies used, resources needed, and artifacts to be generated before developing a successful application. This example takes advantage of only a minimal set of features in Teiid for the sake of simplicity and time.

NOTE: **Ask Us** - Ask us any questions you have on this Quick Start or any other Teiid related questions on https://community.jboss.org/en/teiid?view=discussions[Teiid Forums].

### Introduction

Quick starts for http://teiid.jboss.org/[Teiid].

To contribute a quick start, goto http://github.com/teiid/teiid-quickstarts.

The link:dist[dist] folder contains the Maven scripts to build the quick start zip of the quickstarts.

Be sure to read this entire document before you attempt to work with the quickstarts. It contains the following information:

* [Available Quickstarts](#available-quickstarts): List of the available quickstarts, a description and demonstrated features for each one.
* [System Requirements](#system-requirements): List of software required to run the quickstarts.
* [Run the Quick Starts](#run-the-quick-starts): General instructions for building, deploying, and running the quickstarts.

### Available Quickstarts

The following is a list of the currently available quickstarts. The table lists each quickstart name, the features it demonstrates, and it gives a brief description of the quickstart. For more detailed information about a quickstart, click on the quickstart name.

Some quickstarts are designed to enhance or extend other quickstarts. These are noted in the *Prerequisites* column. If a quickstart lists prerequisites, those must be installed or deployed before working with the quickstart.

---
|*Quickstart Name*|*Features Demonstrated*|*Description*|*Prerequisites* |
|:-:|:-:|:-:|:-:|
| [**datafederation**](https://github.com/teiid/teiid-quickstarts/blob/master/vdb-datafederation/README.adoc) | Data Federation, TEXTTABLE, Native Query, VDB Reuse, External Materialization, Excel File  | Shows how to expose multiple data sources for data federation and externally materialize a view to improve performance  | None |
| [**dataroles**](https://github.com/teiid/teiid-quickstarts/blob/master/vdb-dataroles/README.adoc) |Data roles |Shows how to control Read/Write data access using data roles and masking | **datafederation** |
| [**consume-webservices**](https://github.com/teiid/teiid-quickstarts/blob/master/webservices-as-a-datasource/README.adoc) |'ws' Translator, XMLTABLE, XMLPARSE, VIEW DDL |Demonstrates the use of the 'ws' translator to read a web service data source |None
| [**hibernate**](https://github.com/teiid/teiid-quickstarts/blob/master/hibernate-on-top-of-teiid/README.adoc) |Hibernate Integration, VDB ReUse, Create VIEW, Create Trigger, TEXTTABLE |Demonstrates how a Hibernate application can add data federation capabilities at the data layer | **datafederation**
|[**infinispan hotrod cache**](https://github.com/teiid/teiid-quickstarts/blob/master/infinispan-hotrod-as-a-datasource/README.adoc) |'infinispan-hotrod' translator |Demonstrates reading reading a remote infinispan cache using hotrod client |None
|[**infinispan remote materialize cache**](https://github.com/teiid/teiid-quickstarts/blob/master/infinispan-hotrod-as-mat-cache/README.adoc) |'infinispan-hotrod' translator |Demonstrates using a remote infinispan server as a materialization cache using hot rod client|None
|[**simpleclient**](https://github.com/teiid/teiid-quickstarts/blob/master/simpleclient/README.adoc) |Teiid JDBC Connection |Demonstrates how to make a jdbc connection to Teiid using the Teiid JDBC Driver and DataSource |None
|[**tpch**](https://github.com/teiid/teiid-quickstarts/blob/master/tpch/README.adoc) |Performance, Data Federation |Measures performance using TPC-H benchmark against two running Postgresql servers |2 running PostgresSQL servers, Unix machine host
|[**ldap-as-a-datasource**](https://github.com/teiid/teiid-quickstarts/blob/master/ldap-as-a-datasource/README.adoc) |'ldap' Translator, FOREIGN TABLE DDL, OpenLDAP |Demonstrates using the ldap Translator to access data in OpenLDAP Server |OpenLDAP be installed, Groups 'HR' and Users under it be configured
|[**mongodb-as-a-datasource**](https://github.com/teiid/teiid-quickstarts/blob/master/mongodb-as-a-datasource/README.adoc) |'mongodb' Translator, FOREIGN TABLE DDL |Demonstrates using the mongodb Translator to access documents in mongodb |MongoDB be installed, docuemnts be inserted under 'Employee' connection
|[**hbase-as-a-datasource**](https://github.com/teiid/teiid-quickstarts/blob/master/hbase-as-a-datasource/README.adoc) |'hbase' Translator, FOREIGN TABLE DDL |Demonstrates using the Hbase Translator via the Pheonix driver |Hbase be installed
|[**drools-integration**](https://github.com/teiid/teiid-quickstarts/blob/master/drools-integration/README.adoc) | Drools integration, UDF, FOREIGN Function DDL |Demonstrates using a simple rules invocation via a Function |None
|[**hive-as-a-datasource**](https://github.com/teiid/teiid-quickstarts/blob/master/hive-as-a-datasource/README.adoc) |HDFS/Hive integration, Teiid, VDB, View, Hive Translator |Demonstrates using Hive translator to access data in Hadoop/Hive |Hadoop Services, HiveServer2

---
### System Requirements

To run these quickstarts with the provided build scripts, you need the following:

- Use Java 1.8+ to run {{ book.asName }} and Maven. You can choose from the following:
  - OpenJDK
  - Oracle Java SE
  - Oracle JRockit

- Maven 3.0.0 or newer, to build and deploy the examples
  - If you have not yet installed Maven, see the http://maven.apache.org/guides/getting-started/index.html[Maven Getting Started Guide] for details.
  - If you have installed Maven, you can check the version by typing the following in a command line:

```
----
mvn --version 
----
```
- The JBoss Enterprise Application Platform (EAP) 6 distribution ZIP or the {{ book.asName }} distribution ZIP that’s compatible with Teiid.
  - For information on how to install and run {{ book.asName }}, refer to the server documentation.
- Set JBOSS_HOME to the root directory location of your application server, the scripts use this variable to determine where to deploy to.

---

### Run the Quick Starts

The root folder of each quickstart contains a README file with specific details on how to build and run the example.

Open a command line and navigate to the root directory of the quickstart you want to run.

