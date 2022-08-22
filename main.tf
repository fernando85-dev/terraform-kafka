terraform {
  backend "http" {
    update_method = "PUT"
    // DEV
    // address       = "https://objectstorage.sa-saopaulo-1.oraclecloud.com/p/HcstjFXCD0-j5xr_6oQnWraXUUs0tIN_zWQXuHaT75SJUFLB_fwrR40LgOtViGyk/n/gr6tytxycmi3/b/terraform-state/o/terraform-kafka-lac-dev-vin01.tfstate"
	  // HML
    // address          = "https://objectstorage.sa-saopaulo-1.oraclecloud.com/p/PdAF6KQ_sL4oh8XE7dINkHK9UtRfBHXQMpqp--uTtkvZTQnoiuJYFKmVk10U0ZhA/n/gr6tytxycmi3/b/terraform-state/o/kafka-hml01"
    // PRD
      address          = "https://objectstorage.sa-saopaulo-1.oraclecloud.com/p/ILje-XScd0rzg6YsC-i78WvWtVe4saUQHOsgzwWBaRyZHV1aIbX7vUmR-yar7yUT/n/gr6tytxycmi3/b/terraform-state/o/kafka-prd.tfstate"
    }
  
}

provider "oci" {
  region  = var.region
  auth    = "SecurityToken"
  config_file_profile = "gavb.almeida"
}
