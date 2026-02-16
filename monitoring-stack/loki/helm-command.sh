helm repo add grafana https://grafana.github.io/helm-charts
helm repo update

helm upgrade --install loki grafana/loki \
  --namespace loki \
  --create-namespace \
  -f values.yml

helm uninstall loki -n loki