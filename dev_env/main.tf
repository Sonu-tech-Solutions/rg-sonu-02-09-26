module "rg-mod" {
  source = "../modules/azurerm_resource_group"
  rgs    = var.rg1-mod-var
}

module "sa-mod" {
  depends_on = [module.rg-mod]
  source     = "../modules/azurerm_storage_account"
  sa         = var.sa-mod-var
}
