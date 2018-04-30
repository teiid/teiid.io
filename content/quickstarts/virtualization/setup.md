---
bref: ""
date: 2017-05-19T14:40:12+01:00
draft: false
menu:
  sidenav:
    name: Setup
    weight: -400
    parent: Virtualization
sidebar: sidenav
title: "Setup for Teiid Cloud Quickstart"
toc: true
weight: 20
---

[Virtualization Quickstart](..) > **Setup** > [Define a Data Service](../define-data-service) > [Access Data Service](../access-data-service)

### Setup

## Minishift
A [Minishift](https://www.openshift.org/minishift/) installation which is available for all the major operating systems (Linux, OS X and Windows).

<div class="thumbnail-video">
  <video width="600" height="400" poster="/videos/quickstart/virtualization/_thb_install-start-minishift.png"controls>
    <source src="/videos/quickstart/virtualization/install-start-minishift.webm" type='video/webm'>
  </video>
  <div id="caption">Video installing minishift</div>
</div>

## Database Service
This provides a data service in Openshift which can be virtualized. The database is populated with basic tables containing USA district, city and state information.

<div class="thumbnail-video">
  <video width="600" height="400" poster="/videos/quickstart/virtualization/_thb_deploy-postgres-ds.png" controls>
    <source src="/videos/quickstart/virtualization/deploy-postgres-ds.webm" type='video/webm'>
  </video>
  <div id="caption">Video installing the data service</div>
</div>

## Beetle Studio
The beetle-studio services provide the UI, API and repository for generating new virtualization services from existing Openshift services.

<div class="thumbnail-video">
  <video width="600" height="400" poster="/videos/quickstart/virtualization/_thb_install-beetle-studio.png" controls>
    <source src="/videos/quickstart/virtualization/install-beetle-studio.webm" type='video/webm'>
  </video>
  <div id="caption">Video installing beetle-studio</div>
</div>
