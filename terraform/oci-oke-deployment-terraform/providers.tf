provider "oci" {
  fingerprint         = var.api_fingerprint
  private_key_path    = var.api_private_key_path
  region              = lookup(local.regions,var.home_region)
  tenancy_ocid        = var.tenancy_id
  user_ocid           = var.user_id
  alias               = "home"
  ignore_defined_tags = ["Oracle-Tags.CreatedBy", "Oracle-Tags.CreatedOn"]
}

provider "oci" {
  fingerprint         = var.api_fingerprint
  private_key_path    = var.api_private_key_path
  region              = lookup(local.regions,lookup(lookup(var.clusters,"c1"),"region"))
  tenancy_ocid        = var.tenancy_id
  user_ocid           = var.user_id
  alias               = "c1"
  ignore_defined_tags = ["Oracle-Tags.CreatedBy", "Oracle-Tags.CreatedOn"]
}

provider "oci" {
  fingerprint         = var.api_fingerprint
  private_key_path    = var.api_private_key_path
  region              = lookup(local.regions,lookup(lookup(var.clusters,"c2"),"region"))
  tenancy_ocid        = var.tenancy_id
  user_ocid           = var.user_id
  alias               = "c2"
  ignore_defined_tags = ["Oracle-Tags.CreatedBy", "Oracle-Tags.CreatedOn"]
}

provider "oci" {
  fingerprint         = var.api_fingerprint
  private_key_path    = var.api_private_key_path
  region              = lookup(local.regions,lookup(lookup(var.clusters,"c3"),"region"))
  tenancy_ocid        = var.tenancy_id
  user_ocid           = var.user_id
  alias               = "c3"
  ignore_defined_tags = ["Oracle-Tags.CreatedBy", "Oracle-Tags.CreatedOn"]
}
