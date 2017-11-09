# Platform Helm Chart

Jenkins + repo

## Developing

increment the `version` in the Chart.yaml then:
```
helm dependency build
helm package .
```
then push this to a chart registry, for example:
```
curl --data-binary "@helm-charts-$NEW_VERSION.tgz" https://chartmuseum.helm.test.fabric8.io/api/charts
```


then to install in a `fabric8` namespace on any kubernete
```
minikube start --vm-driver xhyve
minikube addons enable ingress
helm repo add rawlingsj https://chartmuseum.helm.test.fabric8.io
helm install rawlingsj/helm-charts --version $NEW_VERSION --namespace fabric8 -n platform
```

or to rollout a new version:
```
helm update
helm upgrade platform rawlingsj/helm-charts
```