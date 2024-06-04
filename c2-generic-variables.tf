variable "aws_region" {
  description = "Region"
  type = string
  default = "us-east-1"  
}
# Environment Variable
variable "environment" {
  description = "Environment Variable"
  type = string
  default = "dev"
}

variable "business_division" {
  description = "Business Division"
  type = string
  default = "Mobile"
}