# mongo_statefulset [Kubernetes (k8)]
### In this project, I dabble into the kubernetes world on GCP to configure an app that connects to a mongodb service using k8's infrastructure.
---
## Project Breakdown
- I configured a mongodb using statefulset with 3 replicas, all binded to a Headless Service
- I engineered persistent volumes for the databases as located in my googlecloud_ssd.yaml
- I configured one replica of the db to be the primary db using after exec into the mongo pod
```
  rs.initiate(
  {
    _id: "mongo",
    version: 1,
    members: [
      { _id: 0, host: "mongo-0.mongodb:27017" },
      { _id: 1, host: "mongo-1.mongodb:27017" },
      { _id: 2, host: "mongo-2.mongodb:27017" }
    ]
  }
)
```
- I configured a configmap containing mongoUri used by my frontend to connect to the mongodb; [mongodb-config.yaml]
---
# Architecture Diagram
![alt text](https://github.com/belisky/mongo_statefulset/blob/main/Kubernetes_mongo.png?raw=true)

### Miscellaneous.
- Sample commands can be found in setup_resources.sh and ka.sh
