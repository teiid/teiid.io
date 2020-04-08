---
bref: ""
draft: false
menu:
  sidenav:
    name: Schemas
    weight: -396
    parent: Basics
sidebar: sidenav
title: "Schemas"
toc: true
weight: 10
---
[**Teiid Basics**](..) &nbsp;&nbsp; < &nbsp;&nbsp; [Virtual Databases](../vdbs) &nbsp;&nbsp; | &nbsp;&nbsp; **Schemas** &nbsp;&nbsp; | &nbsp;&nbsp; [Data Services](../dataservices) &nbsp;&nbsp; | &nbsp;&nbsp; [Sources](../sources)

---

# Schemas

Originally Teiid used the term models to refer to its schemas as the constructs Teiid used of relational schema were defined in the Eclipse Modeling Framework.  There also used to be additional "model" types that Teiid / Teiid Designer utilized.  Now however we deal strictly with schema in Teiid.

In Teiid, schema are used to define the entities, and relationships between those entities, required to fully 
define the integration so that they may be accessed in a uniform manner.  Teiid can automatically map a schema to JSON or XML for consumption via OData.

VDBs contain two primary varieties of schema types - source and view.

_Source_ or physical schemas define the structural and data characteristics of the information contained in data sources.

In addition to source schemas, Teiid provides the ability to define a variety of view or virtual schemas. These can be used to define a layer of abstraction above the physical layer, so that information can be presented to 
end users and consuming applications in business terms rather than as it is physically stored.

### Schemas and VDBs

<div class="section">

Schemas used for data integration are packaged into a virtual database (VDB). The schemas must be in a complete and 
consistent state when used for data integration. That is, the VDB must contain all the schemas and all resources 
they depend upon.

The bulk of source schema metadata may be imported at runtime, or may be captured prior to deployment and included in the VDB itself.

</div>

### Source Schemas

Source schemas must be configured with a translator / foreign data wrapper and appropriate source access information.  Please see [sources](../sources) for more.
