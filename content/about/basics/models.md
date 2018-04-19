---
bref: ""
draft: false
menu:
  sidenav:
    name: Models
    weight: -396
    parent: Basics
sidebar: sidenav
title: "Models"
toc: true
weight: 10
---
[**Teiid Basics**](..) &nbsp;&nbsp; < &nbsp;&nbsp; [Virtual Databases](../vdbs) &nbsp;&nbsp; | &nbsp;&nbsp; **Models** &nbsp;&nbsp; | &nbsp;&nbsp; [Data Services](../dataservices) &nbsp;&nbsp; | &nbsp;&nbsp; [Connectors](../connectors)

<div>
<img src="http://static.jboss.org/teiid/images/teiid-model-internals.png" frameborder="2" hspace="40" ></img>
</div>

---

### Models

A model is a representation of a set of information constructs. A familiar model is the relational model, 
which defines tables composed of columns and containing records of data.

In Teiid, models are used to define the entities, and relationships between those entities, required to fully 
define the integration of information sets so that they may be accessed in a uniform manner using a single API 
and access protocol. Teiid can automatically map a relational model to JSON or XML for consumption via OData.

_Source_ models define the structural and data characteristics of the information contained in data sources. 
Teiid uses the information in source models to access the information in multiple sources, so that from a user's 
viewpoint these all appear to be in a single source.

In addition to source models, Teiid provides the ability to define a variety of view models. These can be 
used to define a layer of abstraction above the physical layer, so that information can be presented to 
end users and consuming applications in business terms rather than as it is physically stored. These _business views_ can 
be in a variety of forms: relational, XML, JSON, or Web services. Views are defined using transformations between models.

### Types of Models

Teiid Designer can be used to model a variety of classes of models. Each of these represent a conceptually different 
classification of models.

<div class="proj_basics">

*   **Relational**, which model data that can be represented in table – columns and records – form. Relational models can represent structures found in relational databases, spreadsheets, text files, or simple Web services.
*   **Model Extensions**, for defining property name/value extensions to other model classes.

</div>

VDBs contain two primary varieties of model types - source and view. Source models represent the structure and 
characteristics of physical data sources, whereas view models represent the structure and characteristics of abstract 
structures you want to expose to your applications.

### Models and VDBs

<div class="section">

Models used for data integration are packaged into a virtual database (VDB). The models must be in a complete and 
consistent state when used for data integration. That is, the VDB must contain all the models and all resources 
they depend upon.

Models contained within a VDB can be imported into the Teiid Designer. In this way, VDBs can be used as a way to 
exchange a set of related models.

</div>

### Models and Translators, Resource Adaptors

<div class="section">

Source models must be configured with a Translator and a Resource Adaptor with them before a VDB is tested in Designer 
or deployed for data access.

It is possible that multiple models may use the same settings, but each model must define these configurations.

</div>

### Model Validation

<div class="section">

Models must be in a valid state in order to be used for data access. Validation of a single model means that it must 
be in a self-consistent and complete state, meaning that there are no "missing pieces" and no references to 
non-existent entities. Validation of multiple models checks that all inter-model dependencies are present and resolvable.

Models must always be validated when they are deployed in a VDB for data access purposes.

</div>

### Model Execution in Teiid Designer

<div class="section">

Models can be tested in the Teiid Designer by issuing SQL queries in the SQL Explorer perspective. In this way, 
you can iterate between defining your integration models and testing them out to see if they are yielding the 
expected results.

</div>

### Model Files

<div class="section">

Models are stored in XML format, using the XMI syntax defined by the OMG.

Model files should never be modified "by hand". While it is possible to do so, there is the possibility that 
you may corrupt the file such that it cannot be used within the JBoss Enterprise Data Services Platform.

</div>

### Dynamic VDBs and Models  

The information in this artical applies to the VDBs that are built using the Teiid Designer. If you are building 
Dynamic VDBs, much of the information does not apply in that case. However, even Dynamic VDBs have models 
but they only define configuration for importing metadata and Translators and Resource Adaptors.