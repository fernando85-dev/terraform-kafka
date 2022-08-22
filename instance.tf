resource "oci_core_instance" "kafka" {
  count               = var.num_instances
  availability_domain = local.env.pre["availability_domain"]
  compartment_id      = local.env.pre["compartment_id"]
  display_name        = "kafka0${count.index}-instance-spo-prd"
  shape               = var.instance_shape

  source_details {
    source_type             = "image"
    source_id               = var.instance_image_ocid[var.region]
    boot_volume_size_in_gbs = var.boot_volume_size_in_gbs
  }

  metadata = {
    user_data           = base64encode(file(var.bootstrap))
    ssh_authorized_keys = file(var.ssh_public_key)
  }

  create_vnic_details {
    subnet_id        = local.env.pre["subnet_pool_id"]
    assign_public_ip = false
  }
  defined_tags = {
    "default.CC" = "SISTEMAS"
    "default.FUNCAO-RECURSO" = "APLICACAO"
    "default.AMBIENTE" = "PRJ"
    "default.GRUPO-APLICACAO" = "OUTRAS APL"
  }
}