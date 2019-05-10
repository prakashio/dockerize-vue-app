# Dockerize Vue Applications

> A Vue.js app running in docker container.

## Steps
### 1. Build the application
```
docker build -t vue-app:v1 .
```

### 2. Run 
```
docker run -d --net=host vue-app:v1
```
##### To check
#### https://localhost:8090
