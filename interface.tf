variable "name" {
  type        = "string"
  description = "Fully-qualified name of the resource"
  default     = ""
}

variable "owner" {
  type        = "string"
  description = "Name of the team or department responsible for the resource"
}

variable "env" {
  type        = "string"
  description = "Name of the environment the resource supports"
}

variable "app" {
  type        = "string"
  description = "Name of the application the resource supports"
}

variable "role" {
  type        = "string"
  description = "The role or function of this resource within the Application's logical architecture, e.g. load balancer, app server, database"
  default     = ""
}

variable "business_unit" {
  type        = "string"
  description = "The top-level organizational division that owns the resource. e.g. Consumer Retail, Enterprise Solutions, Manufacturing"
  default     = ""
}

variable "business_process" {
  type        = "string"
  description = "The high-level business process the resource supports"
  default     = ""
}

variable "cost_center" {
  type        = "string"
  description = "The managerial accounting cost center for the resource"
  default     = ""
}

variable "compliance_scheme" {
  type        = "string"
  description = "The regulatory compliance scheme the resource’s configuration should conform to"
  default     = ""
}

variable "confidentiality" {
  type        = "string"
  description = "Expected Confidentiality level of data in the resource, e.g. Public, Internal, Confidential, Restricted"
  default     = ""
}

variable "integrity" {
  type        = "string"
  description = "Expected Integrity level of data in the resource, e.g. 0.999, 0.9999, 0.99999, 0.999999"
  default     = ""
}

variable "availability" {
  type        = "string"
  description = "Expected Availability level of data in the resource, e.g. 0.999, 0.9999, 0.99999, 0.999999"
  default     = ""
}

variable "additional_tags" {
  type        = "map"
  default     = {}
  description = "A map of additional tags to merge with the module's standard tags and apply to the resource."
}

output "tags" {
  value = "${local.tags}"
}
