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

## [Teiid Operator](https://github.com/teiid/teiid-operator)

Please start with [Teiid Spring Boot / OpenShift Examples](https://github.com/teiid/teiid-openshift-examples).

It is the job of the [Teiid Operator](https://github.com/teiid/teiid-operator) to deploy Teiid on your OpenShift instance.  The Operator also assists with management of and updates to your Teiid instances.  The Operator is under [active development](/community) and as always feedback, enhancements, and issues are always welcome.   

This can be either based upon a Kubernetes custom resource which fully describes your Teiid instance and virtual data base, or a custom resource that points to maven artifact - typically a [Teiid Spring Boot](../teiid_runtimes/springboot) fat jar.

**Note**: the Teiid project is currently not providing or no longer targeting OpenShift deployment of Teiid WildFly, Thorntail, and Embedded.

---

## [Teiid Syndesis](/tools/teiid_syndesis)

For citizen developers the [Teiid Syndesis](/tools/teiid_syndesis) OpenShift application lets you connect to, view, combine and secure your data - and create a managed virtualization leveraging Teiid on Spring Boot without writing a single line of code.

---