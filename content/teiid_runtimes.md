---
draft: false
title: "Teiid Runtimes"
sidebar: sidenav

menu:
  sidenav:
    name: "Teiid Runtimes"
    pre: "<i class='fa fa-fw fa-cogs'></i>"
    weight: -300
toc: true
---

## The Engine

The core processing engine of Teiid remains the same regardless of the runtime platform.  Data is accessed and integrated in real-time across distributed data sources without copying or otherwise moving data from its system of record.  The engine uses the same scalable thread and memory management techniques adapted to the constraints of its VM to ensure the highest processing through put possible.  The major paradigm of Teiid is to push as much work to the source as possible.  Teiid has a very aggressive optimizer and a deep knowledge of source capabilities and compensation techniques that allow it avoid integration processing when it can.

---

## Runtimes

Teiid is foremost an extensible Java project.  There are a lot of extension points you can utilize if needed.  How you tie everything together is the job of the runtime.  There are 4 runtimes to utilize Teiid.  Each option has distinct benefits and drawbacks.  You should choose the best fit for your integration, deployment, and development needs.

---

## [Teiid WildFly](teiid_wildfly)
  - Teiid WildFly is deep integration of Teiid into the popular WildFly Java Application Server.  This is the most robust offering as you have the full power of a premier application server running along side Teiid.  WildFly provides robust and well documented options for transaction management, connection pooling, security configuration, resource management, clustered deployment, and much more.

---

## [Teiid Spring Boot](./springboot)
  - Teiid implemented for the Spring Boot framework.  While not yet as feature full as Teiid on WildFly, Teiid Spring Boot offers the ease of development and concise packaging of the Spring Boot platform.  Here you can choose via your project dependencies what features / implementations you want - including a transaction manager, connection pools, security integration, etc.  If you wish to use [Teiid on OpenShift](/teiid_cloud) and the Teiid project's associated tools, then you should use Teiid Spring Boot. 

---

## [Teiid Embedded](./embedded)
  - Raw Teiid jars for use in any Java 8+ JRE application - only for highly custom scenarios.
  
---

## [Teiid Thorntail](https://github.com/teiid/teiid-thorntail)
  - Integration of Teiid on the Thorntail bootable JEE container.  This is no longer being maintained.  Please consider Teiid Spring Boot instead.  We are assessing when these efforts can align with the Red Hat MicroProfile and Quarkus initiatives.
  
---
