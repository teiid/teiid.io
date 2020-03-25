---
bref: ""
date: 2017-05-19T14:40:12+01:00
draft: false
menu:
  sidenav:
    name: Spring Boot
    weight: -280
    parent: Teiid Runtimes
sidebar: sidenav
title: "Teiid Spring Boot"
toc: true
weight: 20
---

[**Teiid Runtimes**](..) &nbsp;&nbsp; <  &nbsp;&nbsp; [WildFly] (../teiid_wildfly) &nbsp;&nbsp;  | &nbsp;&nbsp; **Spring Boot** &nbsp;&nbsp;

<div>
<img width="583" height="435" src="/images/teiid-spring-boot.png" frameborder="2" hspace="40" ></img>
</div>

---

The Teiid project provides libraries for developing data virtualizations within Spring applications.

### [**Teiid Spring Boot**](https://github.com/teiid/teiid-spring-boot)

Teiid Spring Boot is a new bootstapping mechanism of Teiid that can utilize several development models to ultimately create a fat jar runtime for Teiid.  You can:

- develop a VDB as DDL files, then use a minimal Teiid Spring Boot [project](https://github.com/teiid/teiid-spring-boot/tree/master/samples/vdb) to do the rest of the work of creating the runtime.
- Use Teiid via [annotations](https://github.com/teiid/teiid-spring-boot/blob/master/docs/Reference.adoc) in your Spring Boot project.  If you are familiar with using the JPA or JDBC template model in a Spring application, then most of learning is already done.

At the end of the day you are still working with the same core Teiid engine to utilize many of the same data virtualization features. Teiid technology provides seamless integration with multiple heterogeneous data sources. For example, you can combine data from Oracle database with data from Microsoft SQL Server, REST Service, Flat File etc. You not only integrate the data, you can also create your own Views of that integrated data.

For more details see:

## - [Source](https://github.com/teiid/teiid-spring-boot)

## - [User Guide](https://github.com/teiid/teiid-spring-boot/blob/master/docs/UserGuide.adoc)

## - [Sample Projects](https://github.com/teiid/teiid-spring-boot/samples)

## - [OpenShift Examples](https://github.com/teiid/teiid-openshift-examples)

---
