variable "name_prefix"       {}
variable "availability_zone" {}
variable "sybase_size"       {}
variable "sapdata_size"      {}
variable "saplog_size"       {}
variable "volume_type"       { default = "gp2" }
variable "encrypt_volumes"   { default = false }
