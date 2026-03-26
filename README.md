# 🚀 DevOps CI/CD Pipeline with Kubernetes, Prometheus & Grafana

## 📌 Project Overview

This project demonstrates a **complete end-to-end DevOps pipeline** for deploying and monitoring a Spring Boot application. It covers **CI/CD automation, containerization, orchestration, and observability**, simulating a real-world production setup.

---

## 🏗️ Architecture

```
Developer
   │
   ▼
GitHub Repository
   │
   ▼
Jenkins CI/CD Pipeline
   │
   ├── Build (Maven)
   ├── Docker Image Creation
   ├── Push to DockerHub
   │
   ▼
Kubernetes (Minikube)
   │
   ├── Deployment
   ├── Service (NodePort)
   │
   ▼
Spring Boot Application
   │
   ▼
Actuator Metrics (/actuator/prometheus)
   │
   ▼
Prometheus (Scraping Metrics)
   │
   ▼
Grafana (Visualization Dashboard)
```

---

## 🛠️ Tech Stack

| Category         | Tools Used            |
| ---------------- | --------------------- |
| Language         | Java (Spring Boot)    |
| Build Tool       | Maven                 |
| CI/CD            | Jenkins               |
| Containerization | Docker                |
| Orchestration    | Kubernetes (Minikube) |
| Monitoring       | Prometheus            |
| Visualization    | Grafana               |
| Version Control  | Git & GitHub          |

---

## ⚙️ Features

* 🔄 **Automated CI/CD Pipeline** using Jenkins
* 📦 **Dockerized Application Deployment**
* ☸️ **Kubernetes Orchestration (Minikube)**
* 📊 **Real-time Monitoring with Prometheus**
* 📈 **Grafana Dashboards for Metrics Visualization**
* 🔁 **Self-healing Pods & Rolling Updates**
* 🚀 **Scalable & Production-like Setup**

---

## 📁 Project Structure

```
devops-java-app/
│
├── app/                # Spring Boot application
├── kubernetes/         # Deployment & service YAMLs
├── jenkins/            # Jenkins pipeline config
├── monitoring/         # Monitoring configs (optional)
├── scripts/            # Helper scripts
├── docs/               # Architecture diagrams
├── README.md
└── .gitignore
```

---

## 🚀 Getting Started

### 🔹 1. Clone Repository

```
git clone https://github.com/sidn20/devops-java-app.git
cd devops-java-app
```

---

### 🔹 2. Build Application

```
cd app
mvn clean package
cd ..
```

---

### 🔹 3. Build & Push Docker Image

```
docker build -t <your-dockerhub-username>/java-app:latest app/
docker push <your-dockerhub-username>/java-app:latest
```

---

### 🔹 4. Deploy to Kubernetes

```
minikube start
kubectl apply -f kubernetes/
```

Check pods:

```
kubectl get pods
```

---

### 🔹 5. Access Application

```
kubectl get svc java-app-service
```

Open:

```
minikube ip
http://<minikube-ip>:<nodeport>
```

---

## 📊 Monitoring Setup

### 🔹 Prometheus

```
kubectl port-forward svc/monitoring-kube-prometheus-prometheus 9091:9090
```

Open:

```
http://localhost:9091
```

---

### 🔹 Grafana

```
kubectl get secret monitoring-grafana -o jsonpath="{.data.admin-password}" | base64 --decode
kubectl port-forward svc/monitoring-grafana 3000:80
```

Open:

```
http://localhost:3000
```

Login:

```
Username: admin
Password: prom-operator
```

---

## 📈 Key Metrics Collected

* JVM Memory Usage
* CPU Utilization
* HTTP Request Rate
* Thread Count
* Application Uptime

---

## 🧪 Sample Prometheus Queries

```
jvm_memory_used_bytes
```

```
rate(http_server_requests_seconds_count[1m])
```

```
process_cpu_usage
```

---

## 💡 Key Learnings

* Implemented a **complete CI/CD workflow**
* Understood **container lifecycle & orchestration**
* Gained experience in **monitoring production systems**
* Learned **debugging Kubernetes deployments**
* Built a **real-world DevOps pipeline**

---

## ⭐ One-Line Summary

> Built a complete DevOps pipeline using Jenkins, Docker, and Kubernetes to deploy a Spring Boot application with real-time monitoring using Prometheus and Grafana.

