terraform {
  cloud {
    organization = "network-as-code"

    workspaces {
      name = "nac-meraki-terraform"
    }
  }
  required_providers {
    meraki = {
      source  = "CiscoDevNet/meraki"
      version = ">= 1.0.0"
    }
  }
}

module "meraki" {
  source  = "netascode/nac-meraki/meraki"
  version = "0.1.0"

  yaml_directories          = ["data/"]
  write_default_values_file = "defaults.yaml"
}
