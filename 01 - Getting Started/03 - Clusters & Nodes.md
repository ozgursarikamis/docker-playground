# Nodes

Nodes are the workers that run our applications and services.

A node can be a virtual machine or a physical machine, depending on the cluster. 

Each node contains the services necessary to run pods and is managed by the master components.

The services on a node include the Docker runtime, kubelet, and kube-proxy.

# Clusters

A cluster is a set of nodes grouped together.

One of these nodes is a master node, and the others are worker nodes.

The master node manages the worker nodes and the pods in the cluster.