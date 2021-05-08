variable "domain" {
  default = "tf-test"
}

variable "ami_image"  {
  default = "ami-b70554c8"
}

variable "name" {
  description = "Name of the Instance"
  default = "Instance1"
}

variable "instance_type" {
  default = "t2.medium"
}

variable "key_name" {
  default = "devops"
}
