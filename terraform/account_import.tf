# Copyright Amazon.com, Inc. or its affiliates. All rights reserved.
# SPDX-License-Identifier: Apache-2.0
#
module "aft_account_import" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail = "ramdonti+lgasandbox@amazon.com"
    AccountName  = "lgasandbox"
    # Syntax for top-level OU
    ManagedOrganizationalUnit = "Sandbox"
    # Syntax for nested OU
    # ManagedOrganizationalUnit = "Sandbox (ou-xfe5-a8hb8ml8)"
    SSOUserEmail     = "ramdonti+lgasandbox@amazon.com"
    SSOUserFirstName = "ramesh"
    SSOUserLastName  = "donti"
  }

  account_tags = {
    "ABC:Owner"       = "ramdonti+lgasandbox@amazon.com"
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
