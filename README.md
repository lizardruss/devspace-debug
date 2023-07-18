# No Manifest Example

## Deploy Helm Chart
This can be run by CI. Installing it via `helm` command here to demonstrate that DevSpace can still connect to a
deployment that it is not initially aware of.

```shell
helm upgrade ci component-chart \
  --repo https://charts.devspace.sh \
  --install \
  --namespace ci \
  --create-namespace \
  --values helm/values.yaml
```

I'm using helm out of convenience, but you could also use manifests, ArgoCD, GitHub Actions, Jenkins... basically any deploy method should work.

## Run DevSpace
Running `devspace dev` will still replace the deployed pod with your custom build image, even though it is unaware of the manifests used to deploy it.
```shell
devspace dev
```

If you'd like to use a pre-built image, simply replace the `dev.app.devImage` with your prebuilt image.