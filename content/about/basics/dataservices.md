---
bref: ""
draft: false
menu:
  sidenav:
    name: Data Services
    weight: -394
    parent: Basics
sidebar: sidenav
title: "Data Services"
toc: true
weight: 10
---
[**Teiid Basics**](..) &nbsp;&nbsp; < &nbsp;&nbsp; [Virtual Databases](../vdbs) &nbsp;&nbsp; | &nbsp;&nbsp; [Models](../models) &nbsp;&nbsp; | &nbsp;&nbsp; **Data Services** &nbsp;&nbsp; | &nbsp;&nbsp; [Connectors](../connectors)

## Services


Data access services via data virtualization provide important abstraction and decoupling features.

<div>
<img height="400" src="http://static.jboss.org/teiid/images/teiid-soa.png" frameborder="2" hspace="40" ></img>
</div>

### Services and Abstraction

Decoupling is _the_ key concept in services and is achieved through abstraction based on service interfaces. Business processes represent a formalized executable form of the actual enterprise's processes, but offer a layer of abstraction above the physical processes, be they automated or manual. Business processes are composed of business services. Just as business processes represent an abstraction from their real-world counterparts, so do business services offer an abstraction of actual physical services.

Business processes and services both make use of business information, which is likely resident in many different types and instances of databases and files. This information can be exposed to business services using the same service-oriented paradigm - as **_data access services._**

</td>

</tr>

</tbody>

</table>

## Data Access Services

<div class="well">A data access service is a standards-based, uniform means of accessing information in a form useful to business applications.</div>

Data access services expose information to business services in a form and through a standards based interface amenable to those services.

Since data is rarely in a form required by applications and services, and is often not even in a single data source, a key requirement for data services is that they abstract the data from its physical persistence structure, presenting it in a form that is closer to the needs of the using application. This effectively decouples consuming applications from the structure of the underlying data.

The form is generally some representation of business objects to be manipulated by business services and passed between services by business processes. Business objects may be simple tabular structures or complex nested structures. Almost always, though, they must be composed from information residing in more than one data source, often in different persistence formats.

Hand-in-hand with abstraction, a federated query engine is required to execute the transformations defining the abstraction layers in an efficient manner, and to expose the abstracted structures through uniform and standard APIs.

The two key components of a data services architecture, then, are:

<div class="proj_basics">

*   **Modeling environment**, to define the abstraction layers -- views and Web services
*   **Execution environment**, to actualize the abstract structures from the underlying data, and expose them through standard APIs. A query engine is a required part of the execution environment, to optimally federate data from multiple disparate sources.

</div>

### Technical and Business Viewpoints

Data access services can be viewed from both a technology vantage point, or from a business viewpoint.

#### The Technology Viewpoint

Teiid provides a suite of projects that provide _data services_ to business applications. That is, Teiid provides a means to access integrated data from multiple data sources, through your preferred standards-based API. Teiid provides access to federated information through JDBC (SQL or XQuery), ODBC (SQL or XQuery), and SOAP (Web services).

#### The Business Viewpoint

A more business- or user-centric view of data services is that they are information representations required by business applications. From this perspective, data services are defined and _designed_ by business analysts, modelers, and developers to represent the information structures required by business applications. Often, a key design goal is one of interoperability - the requirement that systems work together seamlessly, including when exchanging data. Teiid provides graphical and other tools for defining these interoperable data services, essentially relational and XML views that can be used by business applications in a semantically-meaningful manner.

These two viewpoints roughly correspond to the **Execution** and **Modeling** components of a data services solution, respectively.

<div class="uploaded-img">![](http://static.jboss.org/teiid/images/teiid-dataservices.png)</div>