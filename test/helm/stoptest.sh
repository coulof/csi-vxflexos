#/bin/sh
kubectl delete -n test -f $1.yaml
sleep 10
kubectl get pods -n test
sleep 20
sh deletepvcs.sh -n test
kubectl get persistentvolumes -o wide
rm $1.yaml
