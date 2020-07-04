# Terraform AWS CloudWatch Log Group
Create a cloudwatch log group, policy and attach policy to role

## Variables
### Input
| Variables           | Description                                                | Default |
|:--------------------|:-----------------------------------------------------------|:--------|
| resource_type       | Type of resource cloudwatch is for eg lambda, ecs, fargate |         |
| log_group_name      | Name of log group. Exists under the resource type          |         |
| log_group_retention | Number of days to retain cloudwatch logs                   | 14      |
| resource_name       | Name of the resource the policy is for                     |         |
| role_name           | Name of the role to attach the policy                      |         |

### Output
| Variables      | Description           |
|:---------------|:----------------------|
| log_group_name | Name of the log group |

## How to
Specify the module source and the provider information.

### Sample
```
provider "aws" {
    region = ""
    shared_credentials_file = ""
}

module "cloudwatch" {
    source = "github.com/Haplo-tech/Terraform.Module.AWS.CloudWatch"
    resource_type = ""
    log_group_name = ""
    log_group_retention = 14
    resource_name = ""
    role_name = ""
}
```