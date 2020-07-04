variable "resource_type" {
  type = string
  description = "Type of resource cloudwatch is for eg lambda, ecs, fargate"
}
variable "log_group_name" {
  type = string
  description = "Name of log group. Exists under the resource type"
}
variable "log_group_retention" {
  type = number
  description = "Number of days to retain cloudwatch logs"
  default = 14
}
variable "resource_name"{
  type = string
  description = "Name of the resource the policy is for"
}
variable "role_name" {
  type = string
  description = "Name of the role to attach the policy"
}
