---
bref: ""
draft: false
menu:
  sidenav:
    name: 13.x Downloads
    weight: -276
    parent: Teiid WildFly
sidebar: sidenav
title: "Teiid WildFly 13.x Downloads"
toc: true
weight: 15
---

---

## Runtime
---
- **Version 13.1.2**
  - [**Teiid Runtime**](https://oss.sonatype.org/service/local/repositories/releases/content/org/teiid/wildfly/teiid-wildfly/13.1.2/teiid-wildfly-13.1.2-dist.zip) [(with WildFly/Console)](https://oss.sonatype.org/service/local/repositories/releases/content/org/teiid/wildfly/teiid-wildfly/13.1.2/teiid-wildfly-13.1.2-server.zip)
  - [**JDBC Driver**](https://oss.sonatype.org/service/local/repositories/releases/content/org/teiid/teiid/13.1.2/teiid-13.1.2-jdbc.jar)
  - [**Teiid Source**](https://oss.sonatype.org/service/local/repositories/releases/content/org/teiid/wildfly/teiid-wildfly/13.1.2/teiid-wildfly-13.1.2-src.zip)
  - [**Release Notes/Change Log**](http://teiid.github.io/teiid-documents/13.1.x/content/reference/Release_Notes.html)
  - [**Teiid Web Console**](https://oss.sonatype.org/service/local/repositories/releases/content/org/teiid/hal/dist/3.1.3/dist-3.1.3-overlay.zip)

---
- **Version 13.0.3**
  - [**Teiid Runtime**](https://oss.sonatype.org/service/local/repositories/releases/content/org/teiid/wildfly/teiid-wildfly/13.0.3/teiid-wildfly-13.0.3-dist.zip) [(with WildFly/Console)](https://oss.sonatype.org/service/local/repositories/releases/content/org/teiid/wildfly/teiid-wildfly/13.0.3/teiid-wildfly-13.0.3-server.zip)
  - [**JDBC Driver**](https://oss.sonatype.org/service/local/repositories/releases/content/org/teiid/teiid/13.0.3/teiid-13.0.3-jdbc.jar)
  - [**Teiid Source**](https://oss.sonatype.org/service/local/repositories/releases/content/org/teiid/wildfly/teiid-wildfly/13.0.3/teiid-wildfly-13.0.3-src.zip)
  - [**Release Notes/Change Log**](http://teiid.github.io/teiid-documents/13.0.x/content/reference/Release_Notes.html)
  - [**Teiid Web Console**](https://oss.sonatype.org/service/local/repositories/releases/content/org/teiid/hal/dist/3.1.3/dist-3.1.3-overlay.zip)

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
- [**The Embedded Examples**](https://github.com/teiid/teiid-embedded-examples)

---

### Docker

You can create your own Docker images of the combined WildFly/Teiid/Console runtime by starting with the [Dockerfile](https://github.com/jboss-dockerfiles/teiid/blob/master/Dockerfile) or the [base image](https://hub.docker.com/r/jboss/teiid/). These can be used to create ephemeral instances for testing or you can layer in your modules and deployments.

---

### Installation

Please consult the respective Migration Guides [**from 10.x to 11.x.**](http://teiid.github.io/teiid-documents/master/content/admin/Migration_Guide_From_Teiid_10.x.html), [**from 11.x to 12.x.**](http://teiid.github.io/teiid-documents/master/content/admin/Migration_Guide_From_Teiid_11.x.html), and [**from 12.x to 13.x.**](http://teiid.github.io/teiid-documents/master/content/admin/Migration_Guide_From_Teiid_12.x.html)

Teiid Requires:

- [**JRE**](http://www.java.com/en/download/manual.jsp)
  - Java 1.8 for Teiid 9.1+
- [**WildFly**](https://wildfly.org/downloads/)
  - WildFly 17.0.0 for Teiid 13.x

For complete installation instructions please refer to "Administrator's Guide" in [Teiid Documents section](../docs/index.html).

For Quick "standalone" mode installation of the latest Teiid

Either start by unzip the kit above that includes EAP or:

1.  Install the appropriate WildFly / EAP version (see above).
2.  UnZip Teiid archive over the installed application server

Then start the server using "standalone.sh -c standalone-teiid.xml" command.

Additionally you'll need to supply any third-party jars needed to connect to your enterprise sources like JDBC Drivers.

Teiid JDBC Driver  `teiid-<version>-jdbc.jar`  can be downloaded from above links for accessing a VDB through JDBC.
