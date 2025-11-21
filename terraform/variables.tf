variable "aws_region" {
   type = string
   default = "us-west-2"
}

variable "key_pair_name" {
   type = string
}

variable "public_key_path" {
   type = string
   description = "Path to public key to create key pair"
}

variable "instance_type" {
   type = string 
   default = "t3.micro"
}
