# == Naming + Placement
variable "envtype"           {}
variable "envname"           {}
variable "app_name"          {}
variable "domain"            {}
variable "aws_region"        {}
variable "project_prefix"    {}
variable "sap_sid"           {}
variable "availability_zone" {}
variable "r53_zone"          {}

# == Volume Sizes
variable "ebs_usr_sap"      { default = "50"  }
variable "ebs_media"        { default = "50"  }
variable "root_volume_size" { default = "150" }
variable "ebs_stripe_size"  {
  type = "map"
  default = {
    r3.4xlarge = "334"
  }
}

# == EBS Options
variable "encrypt_ebs_volumes" { default = false }
variable "ebs_optimised"       { default = true }

# == Swap Sizes
variable "swap_sizes" {
  type = "map"
  default = {
    m4.large   = "16"
    m4.xlarge  = "32"
    m4.2xlarge = "64"
    r3.4xlarge = "96"
  }
}

# == EC2 instance
variable "key_name"                    {}
variable "instance_subnet"             {}
variable "iam_instance_profile"        {}
variable "security_groups"             {}
variable "ami_id"                      {}
variable "instance_type"               {}
variable "termination_protection"      { default = false }
variable "associate_public_ip_address" { default = false }
variable "user_data_file_path"         { default = "../localmodules//tf-aws-sap/include/hana_userdata.tmpl" }
