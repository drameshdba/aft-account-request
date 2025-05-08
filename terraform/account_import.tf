module "aft-import-sandbox" {
source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "ramdonti+lgasandbox@amazon.com"
    AccountName               = "lgasandbox"
    ManagedOrganizationalUnit = "Sandbox"
    SSOUserEmail              = "ramdonti+lgasandbox@amazon.com"
    SSOUserFirstName          = "sandbox1"
    SSOUserLastName           = "SSO"
  }

  account_tags = {
    "ABC:Owner"       = "myname@mycompany.com"
    "ABC:Division"    = "ENT"
    "ABC:Environment" = "Dev"
    "ABC:CostCenter"  = "123456"
    "ABC:Vended"      = "true"
    "ABC:DivCode"     = "102"
    "ABC:BUCode"      = "ABC003"
    "ABC:Project"     = "123456"
  }

  change_management_parameters = {
    change_requested_by = "HashiCorp Learn"
    change_reason       = "Learn AWS Control Tower Account Factory for Terraform"
  }
  account_customizations_name = "SANDBOX"
}
