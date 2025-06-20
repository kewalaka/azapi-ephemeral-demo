variable "short_location_code" {
  description = "A short form of the location where resource are deployed, used in naming conventions."
  type        = string
  default     = "auea"
}

variable "env_code" {
  description = "Short name of the environment used for naming conventions (e.g. dev, test, prod)."
  type        = string
  validation {
    condition = contains(
      ["dev", "test", "uat", "prod"],
      var.env_code
    )
    error_message = "Err: environment should be one of dev, test or prod."
  }
  validation {
    condition     = length(var.env_code) <= 4
    error_message = "Err: environment code should be 4 characters or shorter."
  }
}

# tags are expected to be provided
variable "default_tags" {
  description = <<DESCRIPTION
Tags to be applied to resources.  Default tags are expected to be provided in local.default_tags, 
which is merged with environment specific ones in ``environments\env.terraform.tfvars``.
Most resources will simply apply the default tags like this:

```terraform
tags = local.default_tags
```

Additional tags can be provided by using a merge, for instance:

```terraform
tags = merge(
    local.default_tags,
    tomap({
      "MyExtraResourceTag" = "TheTagValue"
    })
)
```

Note you can also use the above mechanims to override or modify the default tags for an individual resource,
since only unique items in a map are retained, and later tags supplied to merge() function take precedence.
DESCRIPTION
  type        = map(string)
  default     = {}
}
