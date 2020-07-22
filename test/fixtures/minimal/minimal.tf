resource "random_id" "testing_suffix" {
  byte_length = 4
}

module "full_context" {
  source = "../../../"

  name = "${var.name}"

  org   = "${var.org}"
  owner = "${var.owner}"
  env   = "${var.env}"
  app   = "${var.app}"
  role  = "blob store"

  business_unit    = "Enterprise Solutions"
  business_process = "Product"

  cost_center       = "C1234"
  compliance_scheme = "HIPAA"

  confidentiality = "Internal"
  integrity       = "0.9999"
  availability    = "0.999"

  additional_tags = {
    CustomKey = "CustomValue"
  }
}

variable "name" {
  type = "string"
}

variable "region" {
  type = "string"
}

variable "org" {
  type = "string"
}

variable "owner" {
  type = "string"
}

variable "env" {
  type = "string"
}

variable "app" {
  type = "string"
}

output "full_context-tags" {
  value = "${module.full_context.tags}"
}

output "random_id-hex" {
  value = "${random_id.testing_suffix.hex}"
}