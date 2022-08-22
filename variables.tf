variable "tenancy_ocid" {
  default = "ocid1.tenancy.oc1..aaaaaaaau5cp2melgdlaavx52sw7xdg365cuncuwb36catdgq2qhqhwd7qsq"
}

#variable "user_ocid" {
#}

variable "fingerprint" {
  default = "e0:4b:c6:ac:f4:87:fd:1c:3b:4a:4d:27:3e:24:0d:c7"
}

variable "private_key_path" {
}

variable "region" {
  default = "sa-saopaulo-1"
}

variable "ssh_public_key_path" {
}

variable "ssh_private_key_path" {
  default = "~/.ssh/ssh-key-infra_oci"
}

variable "ssh_public_key" {
  default = "~/.ssh/ssh-key-infra_oci.pub"
}

variable "compartment_ocid" {
  // DEV 
  //default = "ocid1.tenancy.oc1..aaaaaaaau5cp2melgdlaavx52sw7xdg365cuncuwb36catdgq2qhqhwd7qsq"
  // HML
  //default = "ocid1.compartment.oc1..aaaaaaaa44zplfaeqmzaaqfhdy32hmokxhfuhdxtbpkglnnhqarb4tbaq6ia"
  // PRD
  default = "ocid1.compartment.oc1..aaaaaaaajjzvyb2d45wjgeha27bby3ok6iimaivcvli2cl44z5nsqzhmcsla"
}

variable "instance_shape" {
  default = "VM.Standard.E2.1"
}

variable "instance_shape_node" {
  default = "VM.Standard.E2.2"
}

variable "num_instances" {
  default = "3"
}

variable "boot_volume_size_in_gbs" {
  default = "50"
}

variable "instance_image_ocid" {
  type = map(string)

  default = {
    // See https://docs.us-phoenix-1.oraclecloud.com/images/
    // Oracle-provided image "Oracle-Linux-7.4-2018.02.21-1"
    us-phoenix-1   = "ocid1.image.oc1.phx.aaaaaaaaupbfz5f5hdvejulmalhyb6goieolullgkpumorbvxlwkaowglslq"
    us-ashburn-1   = "ocid1.image.oc1.iad.aaaaaaaajlw3xfie2t5t52uegyhiq2npx7bqyu4uvi2zyu3w3mqayc2bxmaa"
    eu-frankfurt-1 = "ocid1.image.oc1.eu-frankfurt-1.aaaaaaaa7d3fsb6272srnftyi4dphdgfjf6gurxqhmv6ileds7ba3m2gltxq"
    uk-london-1    = "ocid1.image.oc1.uk-london-1.aaaaaaaaa6h6gj6v4n56mqrbgnosskq63blyv2752g36zerymy63cfkojiiq"
    sa-saopaulo-1  = "ocid1.image.oc1.sa-saopaulo-1.aaaaaaaa4jgkrkwd5d6ktzu43mjhri4el2p3gc7hzkkt26uhawjf6xe2s5ra"
    sa-vinhedo-1   = "ocid1.image.oc1.sa-vinhedo-1.aaaaaaaac2a37aq3zurlc5ynsjvlks34ncwuug6bv2fivl4nmden6oopxhiq"
    // CentOS-7-2022.06.21-0
    sa-vinhedo-1   = "ocid1.image.oc1.sa-vinhedo-1.aaaaaaaalml7gnsv57rwlifb7ozjfivd3b3q3uhk6pts6uxi7ky3cmkxzvda"
  }
}

variable "bootstrap" {
  default = "./userdata/user-data.sh"
}

variable "network_security_group_security_rule_source_rule2" {
  // DEV
  // default = "172.18.32.0/22" 
  // HML
  // default = "172.28.36.0/22"
  // PRD
  default = "172.28.40.0/22"
}

variable "security_group_description_rule2" {
  default = "Permite acesso do Prometheus ao Node exporter"
}

variable "network_security_group_security_rule_tcp_options_destination_port_range_max_rule2" {
  default = "9091"
}

variable "network_security_group_security_rule_tcp_options_destination_port_range_min_rule2" {
  default = "9092"
}
