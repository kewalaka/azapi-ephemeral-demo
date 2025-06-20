locals {
  appname              = "TODO CHANGE ME"
  short_appname        = local.appname # less than 14 characters to fit resource naming constraints
  default_suffix       = "${local.appname}-${var.env_code}"
  default_short_suffix = "${local.short_appname}${var.env_code}"

  # add resource names here, using CAF-aligned naming conventions
  resource_group_name = "rg-${local.default_suffix}"

  location = data.azurerm_resource_group.parent.location

  default_tags = merge(
    var.default_tags,
    tomap({
      "Environment" = var.env_code
    })
  )
}
