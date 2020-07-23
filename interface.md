
## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
| additional_tags | A map of additional tags to merge with the module's standard tags and apply to the resource. | map | `<map>` | no |
| app | Name of the application the resource supports | string | - | yes |
| availability | Expected Availability level of data in the resource, e.g. 0.999, 0.9999, 0.99999, 0.999999 | string | `` | no |
| business_process | The high-level business process the resource supports | string | `` | no |
| business_unit | The top-level organizational division that owns the resource. e.g. Consumer Retail, Enterprise Solutions, Manufacturing | string | `` | no |
| compliance_scheme | The regulatory compliance scheme the resource’s configuration should conform to | string | `` | no |
| confidentiality | Expected Confidentiality level of data in the resource, e.g. Public, Internal, Confidential, Restricted | string | `` | no |
| cost_center | The managerial accounting cost center for the resource | string | `` | no |
| env | Name of the environment the resource supports | string | - | yes |
| integrity | Expected Integrity level of data in the resource, e.g. 0.999, 0.9999, 0.99999, 0.999999 | string | `` | no |
| name | Fully-qualified name of the resource | string | `` | no |
| owner | Name of the team or department responsible for the resource | string | - | yes |
| role | The role or function of this resource within the Application's logical architecture, e.g. load balancer, app server, database | string | `` | no |

## Outputs

| Name | Description |
|------|-------------|
| tags |  |

