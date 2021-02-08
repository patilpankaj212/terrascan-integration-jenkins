# Terrascan-integration-jenkins
This repository contains a sample Jenkinsfile to integrate terrascan in jenkins pipeline using the junit-xml output of terrascan

## Pre-requisites

- All recommented jenkins plugins are installed
- Go plugin for jenkins is installed

## Steps performed in the build pipeline are

- clone terrascan from github
- build terrascan binary
- clone KaiMonkey from github
- scan KaiMonkey for violations and produce junit-xml output
- pass the xml output to junit plugin
