module "tfplan-functions" {
  source = "./common-functions/tfplan-functions/tfplan-functions.sentinel"
}

module "tfstate-functions" {
  source = "./common-functions/tfstate-functions/tfstate-functions.sentinel"
}

module "tfconfig-functions" {
  source = "./common-functions/tfconfig-functions/tfconfig-functions.sentinel"
}

module "tfrun-functions" {
  source = "./common-functions/tfrun-functions/tfrun-functions.sentinel"
}


policy "prohibited-providers" {
  source = "./security/prohibited-providers.sentinel"
  enforcement_level = "soft-mandatory"
}

policy "prohibited-provisioners" {
  source = "./security/prohibited-provisioners.sentinel"
  enforcement_level = "soft-mandatory"
}

policy "prohibited-resources" {
  source = "./security/prohibited-resources.sentinel"
  enforcement_level = "soft-mandatory"
}

policy "prevent-remote-exec-provisioners-on-null-resources" {
  source = "./security/prevent-remote-exec-provisioners-on-null-resources.sentinel"
  enforcement_level = "soft-mandatory"
}

policy "validate-variables-have-descriptions" {
  source = "./security/validate-variables-have-descriptions.sentinel"
  enforcement_level = "soft-mandatory"
}

policy "allowed-providers" {
  source = "./security/allowed-providers.sentinel"
  enforcement_level = "soft-mandatory"
}

policy "allowed-provisioners" {
  source = "./security/allowed-provisioners.sentinel"
  enforcement_level = "soft-mandatory"
}

policy "allowed-resources" {
  source = "./security/allowed-resources.sentinel"
  enforcement_level = "soft-mandatory"
}
