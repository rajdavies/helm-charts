VERSION=0.0.20

build:
	helm dependency build

install:
	helm dependency build
	helm init
	helm install . --name fabric8
	watch kubectl get pods

upgrade:
	helm dependency build
	helm upgrade fabric8 .
	watch kubectl get pods

delete:
	helm delete --purge fabric8

release:
	helm dependency build
	helm package .

setup:
	minikube addons enable ingress
	brew install kubernetes-helm