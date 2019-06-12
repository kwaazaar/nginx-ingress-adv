echo "pod,namespace,phase,container-image,initcontainer-image" > containers.csv
kubectl get pods --all-namespaces -o=jsonpath='{range .items[*]}{.metadata.name}{","}{..namespace}{","}{..status.phase}{","}{..status.containerStatuses[].image}{","}{..status.initContainerStatuses[].image}{"\n"}{end}' >> containers.csv

