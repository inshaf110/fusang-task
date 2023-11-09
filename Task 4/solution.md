We can Configure Auto Scaling, In that case When the user request is high and the existing resources are insufficient, ASG will increase the cluster by adding one or more node accordingly, by this method we can achieve minimum down time.
Incase if there is no auto scaling configured we have to manually expand the cluster by adding nodes and we can use ansible for scalling up the cluster in order to achieve minimum human errors.
We can achieve this by 2 methods, 1 . increase the CPU or/and Memory in the existing node.
2. Attaching additional nodes to existing cluster with same configurations. (can be done using ansible)

Another important component of a scalable infrastructure is a content delivery network (CDN). A CDN can cache static content, such as images and CSS files, closer to the end user. This can reduce the load on the web servers and improve performance.