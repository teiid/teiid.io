---
bref: ""
draft: false
menu:
  sidenav:
    name: 12.x Downloads
    weight: -275
    parent: Teiid WildFly
sidebar: sidenav
title: "Teiid WildFly 12.x Downloads"
toc: true
weight: 15
---

---

## Runtime
---
- **Version 12.3.2**
  - [**Teiid Runtime**](https://oss.sonatype.org/service/local/repositories/releases/content/org/teiid/wildfly/teiid-wildfly/12.3.2/teiid-wildfly-12.3.2-dist.zip) [(with WildFly/Console)](https://oss.sonatype.org/service/local/repositories/releases/content/org/teiid/wildfly/teiid-wildfly/12.3.2/teiid-wildfly-12.3.2-server.zip)
  - [**JDBC Driver**](https://oss.sonatype.org/service/local/repositories/releases/content/org/teiid/teiid/12.3.2/teiid-12.3.2-jdbc.jar)
  - [**Teiid Source**](https://oss.sonatype.org/service/local/repositories/releases/content/org/teiid/wildfly/teiid-wildfly/12.3.2/teiid-wildfly-12.3.2-src.zip)
  - [**Release Notes/Change Log**](http://docs.jboss.org/teiid/12.2.0/teiid-releasenotes.html)
  - [**Teiid Web Console**](https://repository.jboss.org/nexus/content/repositories/thirdparty-releases/org/teiid/hal/dist/3.1.0/dist-3.1.0-overlay.zip)

---
- **Version 12.2.2**
  - [**Teiid Runtime**](https://oss.sonatype.org/service/local/repositories/releases/content/org/teiid/wildfly/teiid-wildfly/12.2.2/teiid-wildfly-12.2.2-dist.zip) [(with WildFly/Console)](https://oss.sonatype.org/service/local/repositories/releases/content/org/teiid/wildfly/teiid-wildfly/12.2.2/teiid-wildfly-12.2.2-server.zip)
  - [**JDBC Driver**](https://oss.sonatype.org/service/local/repositories/releases/content/org/teiid/teiid/12.2.2/teiid-12.2.2-jdbc.jar)
  - [**Teiid Source**](https://oss.sonatype.org/service/local/repositories/releases/content/org/teiid/wildfly/teiid-wildfly/12.2.2/teiid-wildfly-12.2.2-src.zip)
  - [**Release Notes/Change Log**](http://docs.jboss.org/teiid/12.2.0/teiid-releasenotes.html)
  - [**Teiid Web Console**](https://repository.jboss.org/nexus/content/repositories/thirdparty-releases/org/teiid/hal/dist/3.1.0/dist-3.1.0-overlay.zip)

---
- **Version 12.1.2**
  - [**Teiid Runtime**](https://oss.sonatype.org/service/local/repositories/releases/content/org/teiid/wildfly/teiid-wildfly/12.1.2/teiid-wildfly-12.1.2-dist.zip) [(with WildFly/Console)](https://oss.sonatype.org/service/local/repositories/releases/content/org/teiid/wildfly/teiid-wildfly/12.1.2/teiid-wildfly-12.1.2-server.zip)
  - [**JDBC Driver**](https://oss.sonatype.org/service/local/repositories/releases/content/org/teiid/teiid/12.1.2/teiid-12.1.2-jdbc.jar)
  - [**Teiid Source**](https://oss.sonatype.org/service/local/repositories/releases/content/org/teiid/wildfly/teiid-wildfly/12.1.2/teiid-wildfly-12.1.2-src.zip)
  - [**Release Notes/Change Log**](http://docs.jboss.org/teiid/12.1.0/teiid-releasenotes.html)
  - [**Teiid Web Console**](https://repository.jboss.org/nexus/content/repositories/thirdparty-releases/org/teiid/hal/dist/3.1.0/dist-3.1.0-overlay.zip)

---
- **Version 12.0.2**
  - [**Teiid Runtime**](https://oss.sonatype.org/service/local/repositories/releases/content/org/teiid/wildfly/teiid-wildfly/12.0.2/teiid-wildfly-12.0.2-dist.zip) [(with WildFly/Console)](https://oss.sonatype.org/service/local/repositories/releases/content/org/teiid/wildfly/teiid-wildfly/12.0.2/teiid-wildfly-12.0.2-server.zip)
  - [**JDBC Driver**](https://oss.sonatype.org/service/local/repositories/releases/content/org/teiid/teiid/12.0.2/teiid-12.0.2-jdbc.jar)
  - [**Teiid Source**](https://oss.sonatype.org/service/local/repositories/releases/content/org/teiid/wildfly/teiid-wildfly/12.0.2/teiid-wildfly-12.0.2-src.zip)
  - [**Release Notes/Change Log**](http://docs.jboss.org/teiid/12.0.0/teiid-releasenotes.html)
  - [**Teiid Web Console**](https://repository.jboss.org/nexus/content/repositories/thirdparty-releases/org/teiid/hal/dist/3.1.0/dist-3.1.0-overlay.zip)

#### Maven

You may also directly reference the Teiid artifacts from the download table above from the Maven Central Repository.

- https://mvnrepository.com/artifact/org.teiid

#### JDBC Driver

```xml
<dependency>
  <groupId>org.teiid</groupId>
  <artifactId>teiid</artifactId>
  <classifier>jdbc</classifier>
  <version>X.X.X</version>
</dependency>
```

#### Server Distribution

```xml
<dependency>
  <groupId>org.teiid.wildfly</groupId>
  <artifactId>teiid-wildfly</artifactId>
  <classifier>server</classifier>
  <version>X.X.X</version>
  <type>zip</type>
</dependency>
```
---

### Embedding

You should use maven to directly control what features you need when embedding Teiid. See:  

- [**Teiid Spring Boot**](https://github.com/teiid/teiid-spring-boot)  
- [**Teiid Thorntail Examples**](https://github.com/teiid/thorntail-teiid-examples)
- [**The Embedded Examples**](https://github.com/teiid/teiid-embedded-examples)

---

### Docker

You can create your own Docker images of the combined WildFly/Teiid/Console runtime by starting with the [Dockerfile](https://github.com/jboss-dockerfiles/teiid/blob/master/Dockerfile) or the [base image](https://hub.docker.com/r/jboss/teiid/). These can be used to create ephemeral instances for testing or you can layer in your modules and deployments.

---

### Installation

Please consult the respective Migration Guides [**from 9.x to 10.x.**](http://teiid.github.io/teiid-documents/master/content/admin/Migration_Guide_From_Teiid_9.x.html), [**from 10.x to 11.x.**](http://teiid.github.io/teiid-documents/master/content/admin/Migration_Guide_From_Teiid_10.x.html), and [**from 11.x to 12.x.**](http://teiid.github.io/teiid-documents/master/content/admin/Migration_Guide_From_Teiid_11.x.html)

Teiid Requires:

- [**JRE**](http://www.java.com/en/download/manual.jsp)
  - Java 1.8 for Teiid 9.1+
- [**WildFly**](https://wildfly.org/downloads/)
  - WildFly 15.0.1 for Teiid 12.1.0+
  - WildFly 14.0.1 for Teiid 12.0

For complete installation instructions please refer to "Administrator's Guide" in [Teiid Documents section](../docs/index.html).

For Quick "standalone" mode installation of the latest Teiid

Either start by unzip the kit above that includes EAP or:

1.  Install the appropriate WildFly / EAP version (see above).
2.  UnZip Teiid archive over the installed application server

Then start the server using "standalone.sh -c standalone-teiid.xml" command.

Additionally you'll need to supply any third-party jars needed to connect to your enterprise sources like JDBC Drivers.

Teiid JDBC Driver  `teiid-<version>-jdbc.jar`  can be downloaded from above links for accessing a VDB through JDBC.
