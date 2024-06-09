# Build Infrastructure Home Assignment

In this exercise you will configure a Continuous Integration flow on Bitrise.io, that ensures a customization to a 3rd-party tool is working as expected.

This assignment should take about 2-4 hours, depeding on familiarity with macOS, Ansible and CI systems.

The choices of tools are opinionated, and should give some idea on what tooling we use internally. The tooling, configurations and everything else is simplified, however.

A Mac is not required - you may use the remote access feature, as described in the tips section.

## The task

You are tasked with finishing a Continuous Integration workflow for [nomad](https://www.nomadproject.io/), a highly configurable task scheduler.

This has to prove that our customization is present, and also that it is still functioning:

 - you will have a macOS CI machine running the workflow,
 - you have to start a nomad client & server in this,
 - then launch a nomad job.

 We've provided a very small test, that has to pass.

 We've detailed the tasks, requirements and helps inside the docs/ directory. Please, read them thoroughly and carefully!
# mobileDevOps
