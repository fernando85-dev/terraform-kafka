data "oci_identity_compartment" "root_compartment" {
  id = var.compartment_ocid
}