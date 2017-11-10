# Platform Helm Chart

Jenkins + Nexus repo

## Local development

Best way to get started is with minikube.  

This repo has some helper commands to get you started

```
git clone https://github.com/rawlingsj/helm-charts && cd helm-charts
minikube start --vm-driver xhyve
```
We use `helm` as the package manager and install / upgrade features so to get the binary and install an nginx ingress controller so we can access our apps run:
```
make setup
```
to install on minikube:
```
make install
```
now you can edit charts and apply the chages using:
```
make upgrade
```
to clean up run:
```
make delete
```