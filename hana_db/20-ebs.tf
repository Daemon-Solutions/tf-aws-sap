resource "aws_ebs_volume" "stripe1" {
  size              = "${lookup(var.ebs_stripe_size,var.instance_type)}"
  availability_zone = "${var.availability_zone}"
  encrypted         = "${var.encrypt_ebs_volumes}"
  type              = "gp2"
  tags { Name = "${var.project_prefix}-${var.envname}-${var.app_name}-stripe1" }
}

resource "aws_ebs_volume" "stripe2" {
  size              = "${lookup(var.ebs_stripe_size,var.instance_type)}"
  availability_zone = "${var.availability_zone}"
  encrypted         = "${var.encrypt_ebs_volumes}"
  type              = "gp2"
  tags { Name = "${var.project_prefix}-${var.envname}-${var.app_name}-stripe2" }
}

resource "aws_ebs_volume" "stripe3" {
  size              = "${lookup(var.ebs_stripe_size,var.instance_type)}"
  availability_zone = "${var.availability_zone}"
  encrypted         = "${var.encrypt_ebs_volumes}"
  type              = "gp2"
  tags { Name = "${var.project_prefix}-${var.envname}-${var.app_name}-stripe3" }
}

resource "aws_ebs_volume" "stripe4" {
  size              = "${lookup(var.ebs_stripe_size,var.instance_type)}"
  availability_zone = "${var.availability_zone}"
  encrypted         = "${var.encrypt_ebs_volumes}"
  type              = "gp2"
  tags { Name = "${var.project_prefix}-${var.envname}-${var.app_name}-stripe4" }
}

resource "aws_ebs_volume" "usr_sap" {
  size              = "${var.ebs_usr_sap}"
  availability_zone = "${var.availability_zone}"
  encrypted         = "${var.encrypt_ebs_volumes}"
  type              = "gp2"
  tags { Name = "${var.project_prefix}-${var.envname}-${var.app_name}-usr-sap" }
}

resource "aws_ebs_volume" "media" {
  size              = "${var.ebs_media}"
  availability_zone = "${var.availability_zone}"
  encrypted         = "${var.encrypt_ebs_volumes}"
  type              = "gp2"
  tags { Name = "${var.project_prefix}-${var.envname}-${var.app_name}-media" }
}

resource "aws_ebs_volume" "swap" {
  size = "${lookup(var.swap_sizes,var.instance_type)}"
  availability_zone = "${var.availability_zone}"
  encrypted         = "${var.encrypt_ebs_volumes}"
  type              = "gp2"
  tags { Name = "${var.project_prefix}-${var.envname}-${var.app_name}-swap" }
}
