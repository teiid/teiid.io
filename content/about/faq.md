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

Teiid is a Java component that provides integrated access to multiple data sources through a single uniform API. Teiid is a query engine for joining and unioning data from multiple sources in an optimal manner. Using Teiid, your applications can access information using standard JDBC and SQL, even if that information resides in more than one source or in sources that do not understand JDBC and SQL.

**Is Teiid a database management system?**

Teiid is not itself a database management system, though it will appear to be one to your applications since it provides a standard JDBC interface. Teiid does not store any data. It merely acts as a "single point" interface for accessing data from your data sources in an optimal manner.

**How can Teiid** **be used?**

Teiid's JDBC driver can be used in any Java application. It is especially useful if your application needs an integrated view of multiple sources. Teiid provides a single, uniform API – using standard JDBC and SQL – through which your application can access an integrated view of data from any sources.

**Where can Teiid be used?**

Teiid can be used within stand-alone Java applications, applications hosted in J2EE application servers such as WebLogic and JBoss, or in Eclipse-based applications. In fact, Teiid is the key component of the Red Hat Data Virtualization Platform.

**Why would I want to use Teiid?**

So that you can concentrate on what matters the most to your project – writing the business and domain logic for your application – rather than wiring together data sources. We’ve encapsulated all the query processing logic you need for optimally accessing and joining data that resides in different formats in different data sources. Using Teiid means that you won’t have to reinvent the wheel, and maintain that code forever. That’s just the tip of the iceberg; see 10 reasons to use Teiid for more information!

**Who should use Teiid?**

Any Java developer who has to get access to data in more than one "enterprise standard" source can benefit from Teiid. Even when accessing one source at a time, Teiid provides you with a single uniform standard API for interfacing with sources, so that moving from project to project becomes a breeze. The real power comes when you have to integrate – join or union – data from two sources, especially two different types of sources. Teiid’s query engine does the work for you, using optimization techniques honed over the years and vetted at many large companies and government agencies.

**How do I get started with Teiid?**

Follow the [WildFly Quickstart Example](https://github.com/teiid/teiid-wildfly-quickstarts) and you should be able to issue joins across two JDBC data sources without any custom code.

**What are the key features of Teiid?**

See the Teiid features page for a summary of features.

**What sort of documentation is available for Teiid?**

We provide everything you need to get started with and subsequently master Teiid. See our documentation page.

**How does Teiid compare to the Red Hat Data Virtualization Platform?**

Teiid is the query engine at the heart of the Red Hat Data Virtualization Platform. The Server provides additional functionality that would be expected by an enterprise server – authentication, authorization, load-balancing, and numerous extensibility capabilities. Examples of functionality available with the Enterprise product are: multi-source distributed transactions, multi-source updates through views; importing of enterprise data models from numerous 3rd-party vendors; and connectors to packaged applications.

**How is Teiid related to Teiid Designer?** _(previously Dimension and Modeler)_

The Teiid Designer is an Eclipse-based graphical modeling environment used to define data services. Teiid is also used by Designer for testing queries against VDBs prior to deployment.  
Teiid is actually used inside the Teiid Designer modeling environment. It is used for validating queries against VDBs prior to deployment. And it is the query engine packaged as a Web Service application, which is deployed as a standard WAR file for deployment and execution on standard J2EE application servers.  
Examples of functionality available with Designer that are not available with the Teiid project are: real-time transformation of non-XML data into XML structures backed by XML Schemas; use of the Teiid Designer modeling tool; and deployment of Web services exposing integrated data.
