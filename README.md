# RMD - the resource management daemon
Workloads can contend for compute platform resources such as CPU cores, RAM, and cache, impacting the performance and predictability/latency of each other.  The Resource Management Daemon (RMD) open source project aims to ease the task of resource allocation to workloads to achieve predictable performance, without the end user having to comprehend the nuances of machine specific registers, allocation bit masks, and track these across processor generations. Written in golang, RMD presents a RESTful API that allows users to leverage its functionality locally on the host or through a Cloud Orchestrator. Version V1.0 tackles Last Level Cache management, traditionally a dark resource, not comprehended by many, let alone controlled, yet a significant performance impacting factor for latency sensitive networking and real time applications.

We cover in this document deploying, configuring, and using RMD to realize improved performance particularly for Network Function Virtualization.

[![Build Status](https://travis-ci.org/intel/rmd.svg?branch=master)](https://travis-ci.org/intel/rmd)
[![Go Report Card](https://goreportcard.com/badge/github.com/intel/rmd)](https://goreportcard.com/report/github.com/intel/rmd)
[![GoDoc](https://godoc.org/github.com/intel/rmd?status.svg)](https://godoc.org/github.com/intel/rmd)

## Documents

* [docs/UserGuide.md](https://github.com/intel/rmd/blob/master/docs/UserGuide.md)
* [docs/DeveloperQuickStart.md](https://github.com/intel/rmd/blob/master/docs/DeveloperQuickStart.md)
* [docs/api/](https://github.com/intel/rmd/tree/master/docs/api/v1) - All the API definitions in Swagger YML
* [docs/references/](https://github.com/intel/rmd/tree/master/docs/reference) - All reference documents from everywhere

## QuickStart for developers

Please refer [**docs/DeveloperQuickStart.md**](https://github.com/intel/rmd/blob/master/docs/DeveloperQuickStart.md)
