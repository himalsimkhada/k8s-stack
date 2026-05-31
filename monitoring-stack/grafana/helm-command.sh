kubectl create secret generic grafana-admin-secret \
  --from-literal=admin-user=admin \
  --from-literal=admin-password='Devops@123' \
  -n grafana

kubectl create secret generic grafana-smtp-secret \
  --from-literal=user='your-email@example.com' \
  --from-literal=password='your-email-password-or-app-password' \
  -n grafana

helm repo add grafana-community https://grafana-community.github.io/helm-charts
helm repo update

helm upgrade --install grafana grafana-community/grafana \
  -n grafana -f values.yml

helm uninstall grafana -n grafana
