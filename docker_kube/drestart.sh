echo "Restarting example-app-dep"
echo ""
kubectl rollout restart -n httpd deployment example-app-dep

