helm repo add grafana https://grafana.github.io/helm-charts

helm repo update

helm upgrade --install promtail grafana/promtail \
  -n promtail \
  -f values.yml

helm uninstall promtail -n promtail
