---
bref: ""
date: 2017-05-19T14:40:12+01:00
draft: false
menu:
  sidenav:
    name: FAQ
    weight: -350
    parent: About Teiid
  topnav:
    name: "faq"
    weight: -190
sidebar: sidenav
title: "FAQ"
toc: true
weight: 20
---
[**About**](..) &nbsp;&nbsp; < &nbsp;&nbsp; [**Why Teiid**](../why-teiid) &nbsp;&nbsp; | &nbsp;&nbsp; **FAQ** &nbsp;&nbsp; | &nbsp;&nbsp; [**Basics**](../basics) &nbsp;&nbsp; | &nbsp;&nbsp; [**Project History**](../history)

## What is Teiid? 
First it's a whiptailed lizard, but it's much more. Teiid provides a data virtualization and secure data access layer that can simplify your data integration with your applications. 


## Frequently Asked Questions

<div id="proj_faq">**What is Teiid?**

Teiid is a flexible Java component that provides integrated access to multiple data sources through a single uniform API. Teiid is a query engine for integrating data from multiple sources in an optimal manner. Using Teiid, your applications can access information using standard JDBC/ODBC/OData/REST, even if that information resides in more than one source or in sources that do not understand standard queries.

### Is Teiid a database management system?

Teiid is not itself a database management system, though it will appear to be one to your applications since it provides a standard JDBC/ODBC interface. Teiid does not store any data. It merely acts as an interface or data gateway for accessing data from your data sources in an optimal manner.

### How can Teiid be used?

You can choose any of the supported [Teiid runtimes](/teiid_runtimes).  There download bundles for Teiid WildFly and example projects for everything else to get you started.

### Where can Teiid be used?

Teiid can be used basically anywhere Java can run as Teiid embedded or Teiid Spring Boot.  Teiid can also run within WildFly.  Depending on your needs, you can also containerize Teiid to run on the cloud of your choice including [OpenShift]{/teiid_cloud).

### Why would I want to use Teiid?

So that you can concentrate on what matters the most to your project – writing the business and domain logic for your application – rather than wiring together data sources. We’ll handle the query processing logic for you by pushing it down or running it in our engine.  This approach is applicable to most operational query workloads - including thoses that integrate across millions of rows.  That’s just the tip of the iceberg; see [10 reasons](/about/why-teiid) to use Teiid for more information!

### Who should use Teiid?

Any Java developer who has to get access to data in more than one "enterprise standard" source can benefit from Teiid. Even when accessing one source at a time, Teiid provides you with a single uniform standard API for interfacing with sources, so that moving from project to project becomes a breeze. The real power comes when you have to integrate – join or union – data from two sources, especially two different types of sources. Teiid’s query engine does the work for you, using optimization techniques honed over the years and vetted at many large companies and government agencies.

### Who should not use Teiid?

Teiid is great for Java developers, especially those targeting OpenShift, who need consistent access and integration across a variety of sources.  If you have what looks more like a big data workload, a different virtualization paradigm (for example LDAP), or are primarily working with streams, then adding Teiid to the mix may not be effective. 

### How do I get started with Teiid?

Choose a [Teiid Spring Boot / OpenShift Example](https://github.com/teiid/teiid-openshift-examples) to quickly get a Teiid pod up in OpenShift.

Follow the [WildFly Quickstart Example](https://github.com/teiid/teiid-wildfly-quickstarts) and you should be able to issue joins across two JDBC data sources without any custom code.

Or see all of the [quickstarts](/quickstarts)

### What sort of documentation is available for Teiid?

We provide everything you need to get started with and subsequently master Teiid. The primary documentation is for [Teiid WildFly](/teiid_runtimes/teiid_wildfly/docs).

### How is Teiid used by Red Hat

Teiid is the query engine at the heart of the Red Hat Data Virtualization Platform. Teiid is also providing data virtualization for [Red Hat Integration](https://www.redhat.com/en/products/integration) - the upstream project is [Teiid Syndesis](/tools/teiid_syndesis)

### How is Teiid related to Teiid Designer? _(previously Dimension and Modeler)_

[Teiid Designer](/tools/teiid_designer) is/was an Eclipse-based graphical modeling environment used to define data virtualizations. Designer could work with a WildFly/EAP install of Teiid to provide a rapid development and test cycle for your VDBs.  Unfortunately Teiid Designer is now deprecated and no more releases are expected.  
