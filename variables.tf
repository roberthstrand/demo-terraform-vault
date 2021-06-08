data "vault_azure_access_credentials" "azure" {
  backend                     = "azure"
  role                        = "vses-contributor"
  validate_creds              = true
  num_sequential_successes    = 8
  num_seconds_between_tests   = 7
  max_cred_validation_seconds = 1200
}

variable "subscription_id" {
  type = string
}
variable "tenant_id" {
  type = string
}
