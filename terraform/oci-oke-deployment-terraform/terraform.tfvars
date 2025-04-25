
# The following variables are used to configure the OCI provider in Terraform.

api_fingerprint = "c6:86:ac:ee:c8:fe:66:ae:92:19:30:fd:f7:dd:4a:3e"

api_private_key_path = "/home/ec2-user/.oci/private.pem"

home_region = "us-ashburn-1"

tenancy_id = "ocid1.tenancy.oc1..aaaaaaaav77ebb27qb7c2zdtiy77jsyt6tprog56e4by7dapqegiriqedotq"

user_id =  "ocid1.user.oc1..aaaaaaaafyku2ljv7ii2jzsuphnyae2kl46ub3byqqux4fibqnhceksglviq"

compartment_id = "ocid1.compartment.oc1..aaaaaaaal2xzz2pvkgmu4choxegsomi3poqrddc5hxgvinyjg6672to4khrq"

# ssh public key for the bastion host
ssh_private_key_path = "~/.ssh/id_rsa"
ssh_public_key_path  =  "~/.ssh/id_rsa.pub"



# The CIDR blocks for the VCN, pods, and services networks are defined here.
clusters = {
  c1 = { region = "amsterdam", vcn = "10.1.0.0/16", pods = "10.201.0.0/16", services = "10.101.0.0/16", enabled = true }
  c2 = { region = "bogota", vcn = "10.2.0.0/16", pods = "10.202.0.0/16", services = "10.102.0.0/16", enabled = true }
  c3 = { region = "sanjose", vcn = "10.3.0.0/16", pods = "10.203.0.0/16", services = "10.103.0.0/16", enabled = true }
}

kubernetes_version = "v1.28.2"

cluster_type = "basic"

oke_control_plane = "private"

nodepools = {
  np1 = {
    shape            = "VM.Standard.E4.Flex",
    ocpus            = 4,
    memory           = 16,
    size             = 2,
    boot_volume_size = 50,
  }
}