# k9 Security Context module
The `tf_context` Terraform module helps you capture the context your team needs to 
manage, operate, and secure resources in the Cloud.  This module
helps you adopt the tagging model defined in the k9 Security
[Cloud Deployment Tagging Guide](https://k9security.io/docs/guide-to-tagging-cloud-deployments/)
in whole or in part.

[![CircleCI](https://circleci.com/gh/k9securityio/tf_context.svg?style=svg)](https://circleci.com/gh/k9securityio/tf_context)

## Usage

Use this module to model context about your resources across these dimensions:

* Identity & Ownership
* Security
* Risk (coming soon)

The module acts like a data source.  Describe context you know about your resource to the 
module and it will output that as a `map` of key-value pairs.  You can provide this 
well-modeled map to the resource's tags or as an input to another function.

