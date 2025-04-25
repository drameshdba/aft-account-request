module "aft-vendingaccount1" {

  source = "./modules/aft-account-request.git"

  control_tower_parameters = {
    AccountEmail              = "ramdonti+sandbox1@amazon.com"
    AccountName               = "sandbox-aft"
    ManagedOrganizationalUnit = "Custom"
    SSOUserEmail              = "ramdonti@amazon.com"
    SSOUserFirstName          = "sandbox1"
    SSOUserLastName           = "SSO"
  }

  account_tags = {
    "Learn Tutorial" = "AFT"
  }

  change_management_parameters = {
    change_requested_by = "HashiCorp Learn"
    change_reason       = "Learn AWS Control Tower Account Factory for Terraform"
  }

  custom_fields = {
    group = "non-prod"
  }

}
