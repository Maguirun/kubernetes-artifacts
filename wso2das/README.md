# Kubernetes Artifacts for WSO2 Data Analytics Server #
The Kubernetes Artifacts provides the resources and instructions to deploy the built docker images of WSO2 products in Kubernetes.

## Try it out
Quick steps to run WSO2 Data Analytics Server default profile docker image on Kubernetes

* Prerequisites
    - Ensure default profile of Data Analytics Server docker is built and loaded in the Kubernetes node.
    Instructions on how to build Data Analytics Server docker image and load into the Kubernetes node is explained in [Dockerfile for WSO2 Data Analytics Server](https://github.com/wso2/dockerfiles/tree/master/wso2das/README.md#building-the-docker-images).

* Deploying default profile
    - Ensure that `host` in the `deploy.sh` is set correctly to the node IP  
    - Execute `deploy.sh` script and provide the deployment details.
        + `./deploy.sh 'default'`

* Access management console
    - Add an `etc/hosts` entry in your local machine for `<kubernetes_node_ip> das.wso2.com`. For example:
        + `172.17.8.102       das.wso2.com`
    - To access the management console.
        +  `https://das.wso2.com:32002/carbon`. For example, `https://das.wso2.com:32002/carbon`.

## Undeploying

* How to undeploy the default or distributed deployment
    - Execute `undeploy.sh` .
        + `./undeploy.sh`

* The `undeploy.sh` script has the following profiles that will be undeployed by default.. If it is required to undeploy any other profile, then it can be added to the `product_profiles` with a space as the separator.
    - `product_profiles=(default)`