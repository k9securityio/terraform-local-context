locals {
  standard_tags = {
    Owner       = "${var.owner}"
    Name        = "${var.name}"
    Environment = "${var.env}"
    Application = "${var.app}"
    ManagedBy   = "Terraform"
  }

  opt_role = {
    exists = {
      Role = "${var.role}"
    }

    does_not_exist = {}
  }

  opt_business_unit = {
    exists = {
      BusinessUnit = "${var.business_unit}"
    }

    does_not_exist = {}
  }

  opt_business_process = {
    exists = {
      BusinessProcess = "${var.business_process}"
    }

    does_not_exist = {}
  }

  opt_cost_center = {
    exists = {
      CostCenter = "${var.cost_center}"
    }

    does_not_exist = {}
  }

  opt_compliance_scheme = {
    exists = {
      ComplianceScheme = "${var.compliance_scheme}"
    }

    does_not_exist = {}
  }

  opt_confidentiality = {
    exists = {
      Confidentiality = "${var.confidentiality}"
    }

    does_not_exist = {}
  }

  opt_integrity = {
    exists = {
      Integrity = "${var.integrity}"
    }

    does_not_exist = {}
  }

  opt_availability = {
    exists = {
      Availability = "${var.availability}"
    }

    does_not_exist = {}
  }

  tags = "${merge(local.standard_tags
  , local.opt_role[var.role != "" ? "exists" : "does_not_exist"]
  , local.opt_cost_center[var.cost_center != "" ? "exists" : "does_not_exist"]
  , local.opt_business_unit[var.business_unit != "" ? "exists" : "does_not_exist"]
  , local.opt_business_process[var.business_process != "" ? "exists" : "does_not_exist"]
  , local.opt_compliance_scheme[var.compliance_scheme != "" ? "exists" : "does_not_exist"]
  , local.opt_confidentiality[var.confidentiality != "" ? "exists" : "does_not_exist"]
  , local.opt_integrity[var.integrity != "" ? "exists" : "does_not_exist"]
  , local.opt_availability[var.availability != "" ? "exists" : "does_not_exist"]
  , var.additional_tags)}"
}
