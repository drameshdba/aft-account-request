module "aft_account_modify" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail = "ramdonti+sharedserivces@amazon.com"
    AccountName  = "lgasandbox"
    # Syntax for top-level OU
    ManagedOrganizationalUnit = "DistrictShared"
    # Syntax for nested OU
    # ManagedOrganizationalUnit = "DistrictNutrition ou-p1uj-lbglh4tx"
    SSOUserEmail     = "ramdonti+sharedserivces@amazon.com"
    SSOUserFirstName = "ramesh"
    SSOUserLastName  = "donti"
  }

  account_tags = {
    "ABC:Owner"       = "ramdonti+sharedserivces@amazon.com"
    "ABC:Division"    = "ENT"
    "ABC:Environment" = "Dev"
    "ABC:CostCenter"  = "123456"
    "ABC:Vended"      = "true"
    "ABC:DivCode"     = "102"
    "ABC:BUCode"      = "ABC003"
    "ABC:Project"     = "123456"
  }

  change_management_parameters = {
    change_requested_by = "Ramesh Babu"
    change_reason       = "testing the account vending process"
  }

  account_customizations_name = "SANDBOX"
}
