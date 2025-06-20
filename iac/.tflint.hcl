config {
  format     = "default"
  plugin_dir = "~/.tflint.d/plugins"

  call_module_type    = "all"
  force               = false
  disabled_by_default = false

  ignore_module = {
  }

  # varfile is passed in via CLI since this is only known during pipeline run
}

plugin "azurerm" {
  enabled = true
  version = "0.28.0"
  source  = "github.com/terraform-linters/tflint-ruleset-azurerm"
}
