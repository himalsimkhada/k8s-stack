helm repo add grafana-community https://grafana-community.github.io/helm-charts
helm repo update

helm upgrade --install grafana grafana-community/grafana \
  -n grafana -f values.yml

helm uninstall grafana -n grafana
