provider "aws" {
  region 	= "us-east-1"
}

terraform {
  backend "s3" {
    bucket = "703671925392-aftbootstrap-tfstate"
    key    = "state/terraform-aft-vendingaccount1..tfstate"
    region = "us-east-1"
    dynamodb_table = "ddb-aftbootstrap-state"
  }
}

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

  custom_fields = {
    group = "non-prod"
  }
account_customizations_name = "SANDBOX"
}
