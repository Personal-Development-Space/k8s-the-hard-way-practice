{
for instance in controlplane01 controlplane02; do
  scp -o StrictHostKeyChecking=no ca.crt ca.key kube-apiserver.key kube-apiserver.crt apiserver-kubelet-client.crt apiserver-kubelet-client.key service-account.key service-account.crt etcd-server.key etcd-server.crt kube-controller-manager.key kube-controller-manager.crt kube-scheduler.key kube-scheduler.crt ${instance}:~/
done

for instance in node01 node02 ; do
  scp ca.crt kube-proxy.crt kube-proxy.key ${instance}:~/
done
}
