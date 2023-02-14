# logs  -  get the logs from a container example: kubectl logs nginx-deployment-5c6857657f-2tshh

# events -  get the events from a resource 
    # example: kubectl get events  --sort-by=.metadata.creationTimestamp   --field-selector=involvedObject.name=nginx-deployment-5c6857657f-2tshh  
# describe - get the detailed information about a resource example: kubectl describe pod nginx-deployment-5c6857657f-2tshh


# exec -  execute a command in a container  exmaple: kubectl exec -it nginx-deployment-5c6857657f-2tshh -- /bin/bash
# attach - attach to a running container example: kubectl attach nginx-deployment-5c6857657f-2tshh

# port-forward - forward a port to a pod example: kubectl port-forward nginx-deployment-5c6857657f-2tshh 8080:80
# run   - run a particular image in a pod example: kubectl run nginx --image=nginx
# proxy  - proxy the kubernetes api server to your local machine example: kubectl proxy
# explain - get the documentation of a particular resource example: kubectl explain pod.spec
# cluster-info - get the information about the cluster example: kubectl cluster-info
# top - get the resource usage of nodes and pods example: kubectl top node

