---
bref: ""
date: 2017-05-19T14:40:12+01:00
draft: false
menu:
  sidenav:
    name: Embedded
    weight: -260
    parent: Teiid Runtimes
sidebar: sidenav
title: "Teiid Embedded"
toc: true
weight: 20
---
[**Teiid Runtimes**](..) &nbsp;&nbsp; < &nbsp;&nbsp; [WildFly] (../teiid_wildfly) &nbsp;&nbsp; | &nbsp;&nbsp; [Thorntail](../thorntail) &nbsp;&nbsp; | &nbsp;&nbsp; [Spring Boot](../springboot) &nbsp;&nbsp; | &nbsp;&nbsp; **Embedded** 

**Teiid Embedded** is simply using the Teiid jars available as maven artifacts in any Java 8+ JRE application. WildFly nor any application server is not required. This feature is still evolving and is only for highly custom scenarios. Please consult the source examples and even unit tests utilizing the EmbeddedServer for a more complete guide as to its use.

See [**The Embedded Examples**](https://github.com/teiid/teiid-embedded-examples) for how to integrate multiple, heterogeneous data stores and enterprise services in a light-weight way.

Note that Teiid Embedded is intended for highly customized usage of Teiid or for use in unsupported platforms.  Please check out [**Teiid Spring Boot**](https://github.com/teiid/teiid-spring-boot) and [**Teiid Thorntail Examples**](https://github.com/teiid/thorntail-teiid-examples) for existing platform support.
