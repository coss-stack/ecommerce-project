# E-Commerce DevOps Project

## Architecture

```
GitHub
   │
Webhook
   │
Jenkins
   │
Terraform
   │
AWS Infrastructure
   │
Docker
   │
Docker Hub
   │
Kubernetes
   │
Application
   │
Prometheus
   │
Grafana
```

---

## Tools Used

- Git
- GitHub
- Jenkins
- Terraform
- AWS
- Docker
- Docker Hub
- Kubernetes (EKS)
- Prometheus
- Grafana

---

## Deployment Steps

### 1. Clone Repository

```bash
git clone https://github.com/username/ecommerce-project.git
```

### 2. Build Docker Image

```bash
docker build -t ecommerce .
```

### 3. Push Docker Image

```bash
docker tag ecommerce dockerhubusername/ecommerce:latest
docker push dockerhubusername/ecommerce:latest
```

### 4. Provision Infrastructure

```bash
cd terraform

terraform init

terraform plan

terraform apply
```

### 5. Deploy to Kubernetes

```bash
kubectl apply -f deployment.yaml

kubectl apply -f service.yaml

kubectl apply -f ingress.yaml
```

### 6. Verify Deployment

```bash
kubectl get pods

kubectl get svc

kubectl get ingress
```

### 7. Monitor

- Prometheus collects Kubernetes metrics.
- Grafana visualizes CPU, Memory, Pod health, and Node metrics.

---

## CI/CD Flow

```
Developer
      │
Git Push
      │
GitHub
      │
Webhook
      │
Jenkins Pipeline
      │
Docker Build
      │
Docker Push
      │
Terraform
      │
AWS Infrastructure
      │
Kubernetes Deployment
      │
Application Running
      │
Prometheus
      │
Grafana Dashboard
```

## Outcome

- Automated infrastructure provisioning with Terraform.
- Automated CI/CD using Jenkins.
- Containerized application using Docker.
- Deployed on Kubernetes (Amazon EKS).
- Continuous monitoring using Prometheus and Grafana.
- Highly available and scalable deployment.

***JYOYHI***

