helm repo add prometheus-community https://prometheus-community.github.io/helm-charts
helm repo update

helm upgrade --install prometheus prometheus-community/kube-prometheus-stack \
  -n prometheus --create-namespace \
  -f values.yml

helm uninstall prometheus -n prometheus