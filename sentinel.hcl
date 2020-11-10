module "tfplan-functions" {
  source = "../common-functions/tfplan-functions/tfplan-functions.sentinel"
}

module "tfstate-functions" {
  source = "../common-functions/tfstate-functions/tfstate-functions.sentinel"
}

module "tfconfig-functions" {
  source = "../common-functions/tfconfig-functions/tfconfig-functions.sentinel"
}

module "tfrun-functions" {
  source = "../common-functions/tfrun-functions/tfrun-functions.sentinel"
}


policy "prohibited-providers" {
  source = "./prohibited-providers.sentinel"
  enforcement_level = "advisory"
}

policy "prohibited-provisioners" {
  source = "./prohibited-provisioners.sentinel"
  enforcement_level = "advisory"
}

policy "prohibited-resources" {
  source = "./prohibited-resources.sentinel"
  enforcement_level = "advisory"
}

policy "prevent-remote-exec-provisioners-on-null-resources" {
  source = "./prevent-remote-exec-provisioners-on-null-resources.sentinel"
  enforcement_level = "advisory"
}

policy "validate-variables-have-descriptions" {
  source = "./validate-variables-have-descriptions.sentinel"
  enforcement_level = "advisory"
}

policy "allowed-providers" {
  source = "./allowed-providers.sentinel"
  enforcement_level = "advisory"
}

policy "allowed-provisioners" {
  source = "./allowed-provisioners.sentinel"
  enforcement_level = "advisory"
}

policy "allowed-resources" {
  source = "./allowed-resources.sentinel"
  enforcement_level = "advisory"
}
