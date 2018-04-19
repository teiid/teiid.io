---
bref: ""
date: 2017-05-19T14:40:12+01:00
draft: false
menu:
  sidenav:
    name: Virtualization
    weight: -400
    parent: Quickstarts
sidebar: sidenav
title: "Virtualization Quickstart"
toc: true
weight: 20
---

**Virtualization Quickstart** > [Set-up](./setup) > [Define a Data Service](./define-data-service) > [Access Data Service](./access-data-service)

**This "Teiid in the Cloud" quickstart will lead you through virtualization of a data service**

**Goal**: I have a database instance that I want to expose as OData - let's show that in under 5 minutes.

## [Set-up](./setup)
- install and set-up a running mini-shift instance containing the following services
  - Beetle Studio + Teiid Runtime + Wildfly server
  - PostgresSQL DB data service
  - MySQL DB data service
  - Superset service
  
## [Define a Data Service](./define-data-service)
- Open Beetle Studio
  - connect to MySQL database
  - create a view joining some of your data
  - test your data
  - publish your data service
  - copy the URL provided for the OData route.
  
## [Access Your Data Service](./access-data-service)
- Open new browser with the copied OData route URL
  - execute example OData queries and see results