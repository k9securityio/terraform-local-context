# k9 Security Context module
The `tf_context` Terraform module helps you capture the context your team needs to 
manage, operate, and secure resources in the Cloud.  This module
helps you adopt the tagging model defined in the k9 Security
[Cloud Deployment Tagging Guide](https://k9security.io/docs/guide-to-tagging-cloud-deployments/)
in whole or in part.

[![CircleCI](https://circleci.com/gh/k9securityio/tf_context.svg?style=svg)](https://circleci.com/gh/k9securityio/tf_context)

## Usage

Use this module to model context about your resources across these dimensions:

* Identity & Ownership: Organization, Name, Owner, Environment, App, Role, Business Unit, Business Process, Cost Center, Compliance Scheme  
* Security: Confidentiality, Integrity, Availability
* Risk (coming soon)
* Custom dimensions using additional tags

See the ([module API](interface.md)) for the full set of variables and outputs.   

The module acts like a data source.  Describe context you know about your resource to the 
module and it will output that as a `map` of key-value pairs.  You can provide this 
well-modeled map to the resource's tags or as an input to another function.

First, instantiate the module.  Here is a minimal definition:
```hcl-terraform
module "context" {
  source = "git@github.com:k9securityio/tf_context.git"
  
  owner = "someowner"
  env   = "dev"
  app   = "someapi"
}
```

The `full_context` example in the [test suite](test/fixtures/minimal/minimal.tf) demonstrates
complete usage of the module.

Now use the module's `tags` output in a resource definition.  For example, when creating an S3 bucket:
```hcl-terraform

resource "aws_s3_bucket" "bucket" {
  bucket = "a-new-bucket"
  region = "us-east-1"

  tags = "${module.context.tags}"
}
```

The bucket will be tagged with:
```json
{
    "Application": "someapi",
    "Environment": "dev",
    "ManagedBy": "Terraform",
    "Owner": "someowner"
}
```
