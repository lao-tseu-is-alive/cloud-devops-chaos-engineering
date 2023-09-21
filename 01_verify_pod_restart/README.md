### Lesson 1 : running a Pod is not fault-tolerant

deploy a simple Pod in kubernetes

    kubectl apply -f 01_verify_pod_restart/k8s_pod.yaml

you can check it is running by :

    kubectl get pods -n chaos-engineering

now use the chaos toolkit to check what happen if it is terminated

    chaos run 01_verify_pod_restart/terminate-pod.yaml
    echo $?

We can see that the exit code is 1 (meaning failure).

It is a failure because the steady state hypothesis 
is not verified after 10 seconds. The pod is not working anymore.

Why ? *because we need to use a deployment so that kubernetes 
restarts the container if needed*


