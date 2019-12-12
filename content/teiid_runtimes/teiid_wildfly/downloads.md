---
bref: ""
draft: false
menu:
  sidenav:
    name: Downloads
    weight: -278
    parent: Teiid WildFly
sidebar: sidenav
title: "Teiid WildFly Downloads"
toc: true
weight: 10
---

---

## Runtime

---

## Latest Release Announcement: 13.0.0 Released on December 11th, 2019 ##
Teiid 13.0.0 with WildFly 17.0.0.Final support is now available. The main features are:

* [TEIID-3522](https://issues.redhat.com/browse/TEIID-3522) added support for some OData aggregation via the apply option - including top level aggregation (aggregate), grouping (groupby), and filtering (filter).  
* [TEIID-5492](https://issues.redhat.com/browse/TEIID-5492) added support for an EXPLAIN statement.

### **Latest**
- **Version 13.0.0**
  - [**Teiid Runtime**](https://oss.sonatype.org/service/local/repositories/releases/content/org/teiid/wildfly/teiid-wildfly/13.0.0/teiid-wildfly-13.0.0-dist.zip) [(with WildFly/Console)](https://oss.sonatype.org/service/local/repositories/releases/content/org/teiid/wildfly/teiid-wildfly/13.0.0/teiid-wildfly-13.0.0-server.zip)
  - [**JDBC Driver**](https://oss.sonatype.org/service/local/repositories/releases/content/org/teiid/teiid/13.0.0/teiid-13.0.0-jdbc.jar)
  - [**Teiid Source**](https://oss.sonatype.org/service/local/repositories/releases/content/org/teiid/wildfly/teiid-wildfly/13.0.0/teiid-wildfly-13.0.0-src.zip)
  - [**Release Notes/Change Log**](http://teiid.github.io/teiid-documents/13.0.x/content/reference/Release_Notes.html)
  - [**Teiid Web Console**](https://repository.jboss.org/nexus/content/repositories/thirdparty-releases/org/teiid/hal/dist/3.1.0/dist-3.1.0-overlay.zip)

### **Previous**
- **Version 12.3.1**
  - [**Teiid Runtime**](https://oss.sonatype.org/service/local/repositories/releases/content/org/teiid/wildfly/teiid-wildfly/12.3.1/teiid-wildfly-12.3.1-dist.zip) [(with WildFly/Console)](https://oss.sonatype.org/service/local/repositories/releases/content/org/teiid/wildfly/teiid-wildfly/12.3.1/teiid-wildfly-12.3.1-server.zip)
  - [**JDBC Driver**](https://oss.sonatype.org/service/local/repositories/releases/content/org/teiid/teiid/12.3.1/teiid-12.3.1-jdbc.jar)
  - [**Teiid Source**](https://oss.sonatype.org/service/local/repositories/releases/content/org/teiid/wildfly/teiid-wildfly/12.3.1/teiid-wildfly-12.3.1-src.zip)
  - [**Release Notes/Change Log**](http://docs.jboss.org/teiid/12.3.0/teiid-releasenotes.html)
  - [**Teiid Web Console**](https://oss.sonatype.org/service/local/repositories/releases/content/org/teiid/hal/dist/3.1.3/dist-3.1.3-overlay.zip)

### **Older 11.x releases**
  - [**Version 12.x**](/teiid_runtimes/teiid_wildfly/downloads_12x/)
  - [**Version 11.x**](/teiid_runtimes/teiid_wildfly/downloads_11x/)

### **Unstable**
- **Version 12.3 SNAPSHOT**
  - [**Teiid Runtime**](https://oss.sonatype.org/service/local/artifact/maven/redirect?r=snapshots&g=org/teiid/wildfly&a=teiid-wildfly&v=LATEST&c=dist&e=zip) [(with WildFly/Console)](https://oss.sonatype.org/service/local/artifact/maven/redirect?r=snapshots&g=org/teiid/wildfly&a=teiid-wildfly&v=LATEST&c=server&e=zip)
  - [**JDBC Driver**](https://oss.sonatype.org/service/local/artifact/maven/redirect?r=snapshots&g=org/teiid&a=teiid&v=LATEST&c=jdbc)
  - [**Teiid Source**](https://oss.sonatype.org/service/local/artifact/maven/redirect?r=snapshots&g=org/teiid&a=teiid&v=LATEST&c=src&e=zip)
  - [**Release Notes/Change Log**](https://issues.redhat.com/secure/ReleaseNote.jspa?version=12340672&projectId=12310782)
  - [**Teiid Web Console**](https://repository.jboss.org/nexus/content/repositories/thirdparty-releases/org/teiid/hal/dist/3.1.0/dist-3.1.0-overlay.zip)

### **Historical Version Downloads**
- [**11.x (WildFly 11.0.0 Java 8+)**](/teiid_runtimes/teiid_wildfly/downloads_11x/)
- [**10.x (WildFly 11.0.0 Java 8+)**](http://teiid.jboss.org/downloads_10x)
- [**9.x (WildFly 10.0.0 Java 8+)**](http://teiid.jboss.org/downloads_9x)
- [**9.0 (WildFly 9.0.2 Java 7+)**](http://teiid.jboss.org/downloads_900)
- [**8.13 (WildFly 9.0.2 Java 7+)**](http://teiid.jboss.org/downloads_813)
- [**8.12 (EAP 6.4 Alpha Java 6+)**](http://teiid.jboss.org/downloads_812)
- [**8.11 and prior**](http://sourceforge.net/projects/teiid/files/teiid/)

---

<span style="color:red">**IMPORTANT NOTE: Teiid is targeted to specific platforms**. See more below</span>.

#### Maven

You may also directly reference the Teiid artifacts from the download table above from the Maven Central Repository.

- See https://mvnrepository.com/artifact/org.teiid

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

Teiid 12+

```xml
<dependency>
  <groupId>org.teiid.wildfly</groupId>
  <artifactId>teiid-wildfly</artifactId>
  <classifier>server</classifier>
  <version>X.X.X</version>
  <type>zip</type>
</dependency>
```

Teiid 10-11

```xml
<dependency>
  <groupId>org.teiid</groupId>
  <artifactId>teiid</artifactId>
  <classifier>wildfly-server</classifier>
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
  - Java 1.8 for Teiid 9.1+, Teiid 12.1.0 and later may use Java 11
- [**WildFly**](http://wildfly.org/downloads/)
  - WildFly 17.0.0 for Teiid 12.3.0+
  - WildFly 15.0.1 for Teiid 12.1.0+
  - WildFly 14.0.1 for Teiid 12.0
  - WildFly 11.0.0 for Teiid 10/11

For complete installation instructions please refer to "Administrator's Guide" in [Teiid Documents section](../docs/index.html).

For Quick "standalone" mode installation of the latest Teiid

Either start by unzip the kit above that includes EAP or:

1.  Install the appropriate WildFly / EAP version (see above).
2.  UnZip Teiid archive over the installed application server

Then start the server using "standalone.sh -c standalone-teiid.xml" command.

Additionally you'll need to supply any third-party jars needed to connect to your enterprise sources like JDBC Drivers.

Teiid JDBC Driver  `teiid-<version>-jdbc.jar`  can be downloaded from above links for accessing a VDB through JDBC.

Follow the [quick start](https://docs.jboss.org/author/display/teiidexamples/Home) and the [Teiid Designer documentation](https://www.jboss.org/community/wiki/TheTeiidDesignerProject) to understand how to create a VDB.  Use and contribute to the [Teiid community](https://developer.jboss.org/en/teiid/overview) for additional examples and configuration options for Teiid.

---

## Tooling

---

### **Teiid Designer**

Teiid Designer is a legacy project for the creation of VDBs in a modeling environment. Note that Teiid Designer currently works directly with Teiid 9.0 and earlier only and support for Teiid Designer VDBs is deprecated in Teiid.

#### Latest Release  11.2.1 Final - Jan 2nd, 2019

*   [**Update Site**](http://download.jboss.org/jbosstools/photon/stable/updates/integration-stack/teiiddesigner/11.2.1.Final/) -  (See installation instructions at the bottom of this page)
*   [**Download**](http://download.jboss.org/jbosstools/photon/stable/updates/integration-stack/teiiddesigner/11.2.1.Final/jbosstools-teiid-designer-11.2.1.Final-updatesite.zip)
*   Compatible with [**Teiid 9.0**](http://teiid.jboss.org/downloads/) and earlier releases
*   Compatible with [**JBDS 12**](http://developers.redhat.com/products/devstudio/download/) releases
*   Download Eclipse distro - [**Eclipse 4.8 (Photon)**](http://www.eclipse.org/photon/)

---

#### Stable 11.x Releases

- **Version 11.2.1** - Released: 1/2/2019 - [Release Notes](https://developer.jboss.org/wiki/TeiidDesigner1121ReleaseNotes) - [User Guide](http://docs.jboss.org/teiid/designer/11.1.2/user-guide/html/)
  - [Update Site](http://download.jboss.org/jbosstools/photon/stable/updates/integration-stack/teiiddesigner/11.2.1.Final/)
  - [ZIP](http://download.jboss.org/jbosstools/photon/stable/updates/integration-stack/teiiddesigner/11.2.1.Final/jbosstools-teiid-designer-11.2.1.Final-updatesite.zip)
  - Compatible with [Teiid 9.0](http://teiid.jboss.org/downloads/) & [RHDS 12.0.0 GA](http://developers.redhat.com/products/devstudio/download/) & [Eclipse 4.8 Photon](http://www.eclipse.org/photon/)

- **Version 11.2.0** - Released: 8/9/2019 - [Release Notes](https://developer.jboss.org/wiki/TeiidDesigner112ReleaseNotes) - [User Guide](http://docs.jboss.org/teiid/designer/11.1.2/user-guide/html/)
  - [Update Site](http://download.jboss.org/jbosstools/photon/stable/updates/integration-stack/teiiddesigner/11.2.0.Final/)
  - [ZIP](http://download.jboss.org/jbosstools/photon/stable/updates/integration-stack/teiiddesigner/11.2.0.Final/jbosstools-teiid-designer-11.2.0.Final-updatesite.zip)
  - Compatible with [Teiid 9.0](http://teiid.jboss.org/downloads/) & [RHDS 12.0.0 GA](http://developers.redhat.com/products/devstudio/download/) & [Eclipse 4.8 Photon](http://www.eclipse.org/photon/)

- **Version 11.1.3** - Released: 5/18/2018 - [Release Notes](http://community.jboss.org/wiki/TeiidDesigner1113ReleaseNotes/) - [User Guide](http://docs.jboss.org/teiid/designer/11.1.2/user-guide/html/)
  - [Update Site](http://download.jboss.org/jbosstools/oxygen/stable/updates/integration-stack/teiiddesigner/11.1.3.Final/)
  - [ZIP](http://download.jboss.org/jbosstools/oxygen/stable/updates/integration-stack/teiiddesigner/11.1.3.Final/jbosstools-teiid-designer-11.1.3.Final-updatesite.zip)
  - Compatible with [Teiid 9.0](http://teiid.jboss.org/downloads/) & [RHDS 11.3.0 GA](http://developers.redhat.com/products/devstudio/download/) & [Eclipse 4.7 Oxygen](http://www.eclipse.org/oxygen/)

- **Version 11.1.0** - Released: 9/7/2017 - [Release Notes](http://community.jboss.org/wiki/TeiidDesigner111ReleaseNotes) - [User Guide](http://docs.jboss.org/teiid/designer/11.1/user-guide/html/)
  - [Update Site](http://download.jboss.org/jbosstools/oxygen/stable/updates/integration-stack/teiiddesigner/11.1.0.Final/)
  - [ZIP](http://download.jboss.org/jbosstools/oxygen/stable/updates/integration-stack/teiiddesigner/11.1.0.Final/jbosstools-teiid-designer-11.1.0.Final-updatesite.zip)
  - Compatible with [Teiid 9.0](http://teiid.jboss.org/downloads/) & [RHDS 11.0.0 GA](http://developers.redhat.com/products/devstudio/download/) & [Eclipse 4.7 Oxygen](http://www.eclipse.org/oxygen/)


*   **Version 11.0.0** - Released: 12/5/2016 - [Release Notes](http://community.jboss.org/wiki/TeiidDesigner110ReleaseNotes) - [User Guide](http://docs.jboss.org/teiid/designer/11.0/user-guide/html/)
    *   [Update Site](http://download.jboss.org/jbosstools/oxygen/stable/updates/integration-stack/teiiddesigner/11.0.0.Final/)
    *   [ZIP](https://sourceforge.net/projects/teiid/files/teiid-designer/11.0/teiid-designer-11.0.0.Final-v20161205-1706-B4115.zip/download/)
    *   Compatible with [Teiid 9.0](http://teiid.jboss.org/downloads/) & [RHDS 10.0.0 GA](http://developers.redhat.com/products/devstudio/download/) & [Eclipse 4.6 Neon](http://www.eclipse.org/neon/)

---

#### Install into RH Developer Studio 12.0

*   Launch the **Help > Install New Software**** <span style="font-weight: normal">action</span>**
*   **Add...** the following update site URLs but **DO NOT** install them. Various dependent plugins required for Teiid Designer will be installed as needed. _M**<span style="font-weight: normal">ake sure “Contact all update sites during install to find required software” is checked.</span>**
    *   **[http://download.jboss.org/jbosstools/targetplatforms/jbtistarget/4.6.1.Final/jbtis/REPO/](http://download.jboss.org/jbosstools/targetplatforms/jbtistarget/4.6.1.Final/jbtis/REPO/)**
*   Install **Teiid Designer 11.2.1** via update site:
    *   [**http://download.jboss.org/jbosstools/photon/stable/updates/integration-stack/teiiddesigner/11.2.1.Final/**](http://download.jboss.org/jbosstools/photon/stable/updates/integration-stack/teiiddesigner/11.2.1.Final/)
    *   Click **Install** button and continue through restarting **JBDS**

Install into Eclipse 4.8 (Photon)

*   Launch the **Help > Install New Software**** <span style="font-weight: normal">action</span>**
*   **Add...** the following update site URLs but **DO NOT install them**. Various dependent plugins required for Teiid Designer will be installed as needed. _M<span style="font-weight: normal">ake sure “Contact all update sites during install to find required software” is checked</span>_**_<span style="font-weight: normal">.</span>**
    *   **[http://download.jboss.org/jbosstools/targetplatforms/jbtistarget/4.6.1.Final/jbtis/REPO/](http://download.jboss.org/jbosstools/targetplatforms/jbtistarget/4.6.1.Final/jbtis/REPO/)**
    *   **[http://download.jboss.org/jbosstools/oxygen/stable/updates/](http://download.jboss.org/jbosstools/oxygen/stable/updates/)**
*   Install **Teiid Designer 11.2.1** via update site:
    *   [**http://download.jboss.org/jbosstools/photon/stable/updates/integration-stack/teiiddesigner/11.2.1.Final/**](http://download.jboss.org/jbosstools/photon/stable/updates/integration-stack/teiiddesigner/11.2.1.Final/)
    *   Click **Install** button and continue through restarting Eclipse

---

#### Install into RH Developer Studio 11.x

*   Launch the **Help > Install New Software**** <span style="font-weight: normal">action</span>**
*   **Add...** the following update site URLs but **DO NOT** install them. Various dependent plugins required for Teiid Designer will be installed as needed. _M**<span style="font-weight: normal">ake sure “Contact all update sites during install to find required software” is checked.</span>**
    *   **[http://download.jboss.org/jbosstools/targetplatforms/jbtistarget/4.5.0.Final/jbtis/REPO/](http://download.jboss.org/jbosstools/targetplatforms/jbtistarget/4.5.0.Final/jbtis/REPO/)**
*   Install **Teiid Designer 11.1** via update site:
    *   [**http://download.jboss.org/jbosstools/oxygen/stable/updates/integration-stack/teiiddesigner/11.1.3.Final/**](http://download.jboss.org/jbosstools/oxygen/stable/updates/integration-stack/teiiddesigner/11.1.3.Final/)
    *   Click **Install** button and continue through restarting **JBDS**

Install into Eclipse 4.7 (Oxygen)

*   Launch the **Help > Install New Software**** <span style="font-weight: normal">action</span>**
*   **Add...** the following update site URLs but **DO NOT install them**. Various dependent plugins required for Teiid Designer will be installed as needed. _M<span style="font-weight: normal">ake sure “Contact all update sites during install to find required software” is checked</span>_**_<span style="font-weight: normal">.</span>**
    *   **[http://download.jboss.org/jbosstools/targetplatforms/jbtistarget/4.5.0.Final/jbtis/REPO/](http://download.jboss.org/jbosstools/targetplatforms/jbtistarget/4.5.0.Final/jbtis/REPO/)**
    *   **[http://download.jboss.org/jbosstools/oxygen/stable/updates/](http://download.jboss.org/jbosstools/oxygen/stable/updates/)**
*   Install **Teiid Designer 11.1** via update site:
    *   **[http://download.jboss.org/jbosstools/oxygen/stable/updates/integration-stack/teiiddesigner/11.1.3.Final/](http://download.jboss.org/jbosstools/oxygen/stable/updates/integration-stack/teiiddesigner/11.1.3.Final/)**
    *   Click **Install** button and continue through restarting Eclipse

---

#### Install into RH Developer Studio 10.1

*   Launch the **Help > Install New Software**** <span style="font-weight: normal">action</span>**
*   **Add...** the following update site URLs but **DO NOT** install them. Various dependent plugins required for Teiid Designer will be installed as needed. _M**<span style="font-weight: normal">ake sure “Contact all update sites during install to find required software” is checked.</span>**
    *   **[http://download.jboss.org/jbosstools/targetplatforms/jbtistarget/4.4.1.CR1/jbtis/REPO](http://download.jboss.org/jbosstools/targetplatforms/jbtistarget/4.4.1.CR1/jbtis/REPO)**
*   Install **Teiid Designer 11.0** via update site:
    *   [**http://download.jboss.org/jbosstools/updates/release/neon/integration-stack/teiiddesigner/11.0.0.Final/**](http://download.jboss.org/jbosstools/updates/release/neon/integration-stack/teiiddesigner/11.0.0.Final/)
    *   Click **Install** button and continue through restarting **JBDS**

#### Install into Eclipse 4.6 (Neon)

*   Launch the **Help > Install New Software**** <span style="font-weight: normal">action</span>**
*   **Add...** the following update site URLs but **DO NOT install them**. Various dependent plugins required for Teiid Designer will be installed as needed. _M<span style="font-weight: normal">ake sure “Contact all update sites during install to find required software” is checked</span>_**_<span style="font-weight: normal">.</span>_**
    *   **[http://download.jboss.org/jbosstools/targetplatforms/jbtistarget/4.4.1.CR1/jbtis/REPO](http://download.jboss.org/jbosstools/targetplatforms/jbtistarget/4.4.1.CR1/jbtis/REPO)**
    *   **[http://download.jboss.org/jbosstools/neon/stable/updates/](http://download.jboss.org/jbosstools/neon/stable/updates/)**
*   Install **Teiid Designer 11.0** via update site:
    *   **[http://download.jboss.org/jbosstools/updates/release/neon/integration-stack/teiiddesigner/11.0.0.Final/](http://download.jboss.org/jbosstools/updates/release/neon/integration-stack/teiiddesigner/11.0.0.Final/)**
    *   Click **Install** button and continue through restarting Eclipse 
    
---
