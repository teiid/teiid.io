---
draft: false
title: "Tools"
sidebar: sidenav

menu:
  sidenav:
    name: "Tools"
    weight: -277
    parent: Teiid WildFly
toc: true
---

Teiid WildFly includes a few tools to help you develop and manage various artifacts and components.

---

## **Teiid Console**

The **Teiid Console** is a graphical web based administrative tool that is written using the GWT technologies which is used to monitor WildFly instances. Teiid provides an additional plugin-in into this system that lets users configure and manage Teiid along with WildFly.

### What can the console do?

- help with various administrative tasks such as...

  1.  Deploying a VDB to a running server, and undeploy
  2.  Create and deploy a Data Source
  3.  Check translator property
  4.  Change deployed VDB configuration.

- help in monitoring tasks such as...

  1.  Viewing and management of sessions
  2.  Monitoring the active system health and stopping and starting services
  3.  View currently executing queries and perform a 'cancel' if necessary
  4.  View current system properties
  5.  more...

Look at the [Teiid Console](http://teiid.github.io/teiid-documents/master/content/admin/Teiid_Console.html) section of 
the [Admin Guide](http://teiid.github.io/teiid-documents/master/content/admin/Administrators_Guide.html) document for 
installation and descriptions of all the features it supports.

<div>
<img width="600" height="363" src="/images/webconsole1.png" frameborder="2" hspace="40" vspace="20" ></img>
</div>

---
## **Admin Shell**

The **Teiid Admin Shell** is a deprecated scripting tool based on Groovy that can be used to perform the administrative
functions on a Teiid Server from a command line shell, GUI shell or a script file. This tool exposes the java based Admin API
with its tooling to allow easily editable scripting. 

If you would like to know more about the tool and how it can be used please look at the
 [AdminShell](http://teiid.github.io/teiid-documents/10.1.x/content/admin/AdminShell.html) section of the
  [Admin Guide](http://teiid.github.io/teiid-documents/10.1.x/content/admin/Administrators_Guide.html).
  
---
## ![Designer](/images/designer32.png?raw=true) [Teiid Designer](teiid_designer)

**[Teiid Designer](teiid_designer)** is a deprecated visual tool built in Eclipse, that enables rapid, model-driven definition, integration, management
and testing your VDBs using the Teiid runtime framework.

<div>
<img width="500" height="363" src="/images/teiid-designer-home.png" frameborder="2" hspace="40" ></img>
</div>
