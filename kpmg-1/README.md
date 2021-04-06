Infrastucture:
1. GKE Cluster : Google kubernetes cluster
2. Container Registry : To store docker images
3. CloudBuild : To build the application, publish and deploy the images
4. Load Balancer : ngnix ingress controller of type Load balancer deployed in k8s cluster
5. Cloud Storage : To store the Generic helm template

Tier 1 : Presentation Layer : NodeJs or ReactJS application

Step 1: Containerize the application (Dockerfile)

Step 2: Create values.yaml file to override default values in generic helm tenplate for frontend stored in Cloud storage bucket

Step 3: Create cloudbuild.yaml to build, publish to container registry, tag and deploy image to k8s cluster

Step 4: Create cloudbuild trigger which gets triggered for new commits

Note : The application will be exposed on nginx ingress controller of type LB on path based approach



Tier 2: Application Layer : RESTFUL Java Springboot Application

Step 1: Containerize the application (Dockerfile)

Step 2: Create values.yaml file to override default values in generic helm tenplate for backend springboot java application stored in Cloud storage bucket

Step 3: Create cloudbuild.yaml to build, publish to container registry, tag and deploy image to k8s cluster

Step 4: Create cloudbuild trigger which gets triggered for new commits

Note : The backend application will be exposed on nginx ingress controller of type LB on path based approach and will be ready to be consumed by frontend application



Tier 3 - Redis
Managed Redis to store the data
