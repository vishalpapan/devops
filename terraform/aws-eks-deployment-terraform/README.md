
```markdown
# 🚀 AWS EKS Deployment using Terraform

This project sets up a Kubernetes cluster on Amazon EKS using Terraform, designed for infrastructure automation in a DevOps workflow. It includes AWS CLI, `kubectl`, and `helm` setup steps, along with Terraform configuration to provision networking, compute resources, and cluster settings. After deployment, the EKS cluster is made accessible via `kubectl`, with optional security group tweaks for node communication. The project is based on [HashiCorp's official EKS example](https://github.com/hashicorp-education/learn-terraform-provision-eks-cluster) and enhanced with notes for securely managing credentials and customizing your infrastructure.

---

## 🧰 Prerequisites

Install the following on your system (Amazon Linux preferred):

- Terraform
- AWS CLI
- kubectl
- jq
- git
- helm
- Helm plugins

---

## ⚙️ Setup & Configuration

### 1. Install Terraform

```bash
sudo yum install -y yum-utils
sudo yum-config-manager --add-repo https://rpm.releases.hashicorp.com/AmazonLinux/hashicorp.repo
sudo yum -y install terraform
```

### 2. Install kubectl

```bash
curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"
sudo install -o root -g root -m 0755 kubectl /usr/local/bin/kubectl
```

### 3. Configure AWS CLI

```bash
aws configure
```

Provide:
- Access Key ID: `*************`
- Secret Access Key: `*************`
- Default Region: `ap-south-1`

> ⚠️ Do **not** hardcode or commit your credentials. Use environment variables or AWS profiles.

---

## 🚀 Deploy EKS using Terraform

### 4. Clone Source (Optional Learning Ref)

```bash
git clone https://github.com/hashicorp-education/learn-terraform-provision-eks-cluster.git
```

### 5. Customize Terraform Files

- Update `variables.tf` with your AWS region
- Modify `main.tf` for cluster name, VPC, instance type, and configuration

### 6. Initialize & Apply Terraform

```bash
terraform init
terraform apply
```

### 7. Configure kubectl

```bash
aws eks --region $(terraform output -raw region) update-kubeconfig \
  --name $(terraform output -raw cluster_name)

kubectl get nodes
```

---

## 🔐 Optional: Security Group (SG) Setup

Allow intra-node communication by editing the associated security group in AWS to allow all internal traffic. (Not needed for Azure or GCP.)

---

## 📦 Additional Checks

```bash
kubectl get storageclass
kubectl -n navops get certificate
```

---

## 🛡️ .gitignore Recommendation

```gitignore
*.tfstate
*.tfvars
.terraform/
*.pem
```

---

## 🪪 License

MIT License

---

## 🙌 Acknowledgements

Based on [HashiCorp Learn: Provision EKS](https://github.com/hashicorp-education/learn-terraform-provision-eks-cluster)
```

