---
title: "Teiid on OpenShift"
sidebar: sidenav

menu:
  sidenav:
    name: "Teiid on OpenShift"
    pre: "<i class='fa fa-fw fa-cloud'></i>"
    weight: -500
toc: true
---

OpenShift is Red Hat's hydrid cloud offering built on Kubernetes.  Teiid running on OpenShift provides a way to deploy Teiid into every major cloud vendor's environment or in your own on premise OpenShift.

Getting started with OpenShift is easy. You can create a [local environment](https://code-ready.github.io/crc/) or utilize a [managed instance](https://www.openshift.com/).

**Stay tuned**: over time it is expected that Teiid on OpenShift will generally become Teiid on Kubernetes.

---

## Teiid Operator

Please start with [Teiid Spring Boot / OpenShift Examples](https://github.com/teiid/teiid-openshift-examples).  You can also contribute / build the operator starting with the [source](https://github.com/teiid/teiid-operator).

It is the job of the [Teiid Operator](https://github.com/teiid/teiid-operator) to deploy Teiid on your OpenShift instance.  The Operator also assists with management of and updates to your Teiid instances.  The Operator is under [active development](/community) and as always feedback, enhancements, and issues are always welcome.   

This can be either based upon a Kubernetes custom resource which fully describes your Teiid instance and virtual data base, or a custom resource that points to maven artifact - typically a [Teiid Spring Boot](/springboot) fat jar.

**Note**: the Teiid project is currently not providing or no longer targeting OpenShift deployment of Teiid WildFly, Thorntail, and Embedded.

---

## Teiid Syndesis

For citizen developers the Teiid Syndesis OpenShift application lets you connect to, view, combine and secure your data - and create a managed virtualization leveraging Teiid on Spring Boot without writing a single line of code.

![Syndesis Icon](/images/syndesis_icon_32.svg "Syndesis Icon") [Syndesis](https://syndesis.io/) allows you to connect to your sources, define REST APIs, integrations (like cloud-based Camel/Fuse routes), and data virtualizations in minutes.  

Teiid Syndesis allows you to create views and expose your data as OData or database protocols.  The resulting virtualizations can then be used by your Syndesis Integrations or any application.

![Syndesis Home](/images/ts-home.png "Syndesis Home")

Please see the [Syndesis Quickstart](https://syndesis.io/quickstart/).  Note that by default Teiid Syndesis is not enabled in Syndesis.  We will update this page with instructions on that as well as links to Teiid specific quickstarts.

---