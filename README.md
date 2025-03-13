# 🐳 Inception

## 📌 Project Overview
**Inception** is a **virtualized web server** environment using **Docker** and **Docker Compose**. The goal is to deploy and manage multiple services in isolated containers, ensuring a **secure, scalable, and automated** infrastructure.  

This project strengthens **DevOps** skills, including **containerization, orchestration, networking**, and **server security**.

---

## ⚙️ Technologies & Tools
- **Docker & Docker Compose** – Containerization and orchestration
- **Nginx** – Reverse proxy and web server
- **MariaDB** – Relational database management system
- **WordPress** – CMS deployment in a container
- **OpenSSL** – SSL/TLS certificate generation for HTTPS  
- **Systemd & Networking** – Service management and internal network configuration

---

## 🏗️ Project Structure
Inception sets up a **multi-container architecture**, isolating different services for better security and maintainability.

### **Main Components**
| Service   | Description |
|-----------|------------|
| **Nginx** | Handles HTTPS requests and acts as a reverse proxy. |
| **MariaDB** | Stores and manages the WordPress database. |
| **WordPress** | Runs the CMS within a separate container. |
| **Volumes** | Ensures data persistence for database and WordPress files. |
| **Networks** | Isolates services while allowing secure communication. |

---

## 🚀 Installation & Usage

### **1️⃣ Prerequisites**
Ensure you have the following installed:
- **Docker** (>= 20.x)
- **Docker Compose** (>= 1.29.x)
- Linux environment (Ubuntu/Debian recommended)

### **2️⃣ Setup & Deployment**
Clone the repository and navigate to the project directory:
```bash
git clone https://github.com/FastaLaPasta/Inception.git
cd Inception
```

### **3️⃣ Build and start**
```bash
make
```
