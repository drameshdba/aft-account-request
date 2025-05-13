
# Copyright Amazon.com, Inc. or its affiliates. All rights reserved.
# SPDX-License-Identifier: Apache-2.0
#
module "nico-account-1" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail = "ramdonti+newaccount@amazon.com "
    AccountName  = "nico-account-2"
    # Syntax for top-level OU
    ManagedOrganizationalUnit = "Sandbox"
    # Syntax for nested OU
    # ManagedOrganizationalUnit = "Sandbox (ou-xfe5-a8hb8ml8)"
    SSOUserEmail     = "ramdonti+newaccount@amazon.com "
    SSOUserFirstName = "nico"
    SSOUserLastName  = "gagnon"
  }

  account_tags = {
    "ABC:Owner"       = "ramdonti+newaccount@amazon.com "
    "ABC:Division"    = "ENT"
    "ABC:Environment" = "Dev"
    "ABC:CostCenter"  = "123456"
    "ABC:Vended"      = "true"
    "ABC:DivCode"     = "102"
    "ABC:BUCode"      = "ABC003"
    "ABC:Project"     = "123456"
  }

  change_management_parameters = {
    change_requested_by = "nicolas gagnon"
    change_reason       = "testing the account vending process"
  }

  custom_fields = {
    custom1 = "a"
    custom2 = "b"
  }

  account_customizations_name = "SANDBOX"
}
