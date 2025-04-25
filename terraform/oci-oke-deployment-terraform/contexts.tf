resource "null_resource" "set_contexts" {
  depends_on = [module.c1, module.c2, module.c3]
  for_each   = local.all_cluster_ids
  connection {
    host        = local.operator_ip
    private_key = file(var.ssh_private_key_path)
    timeout     = "40m"
    type        = "ssh"
    user        = "opc"

    bastion_host        = local.bastion_ip
    bastion_user        = "opc"
    bastion_private_key = file(var.ssh_private_key_path)
  }
}
