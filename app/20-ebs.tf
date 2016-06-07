resource "aws_ebs_volume" "usr_sap" {
  size              = "${var.ebs_usr_sap}"
  availability_zone = "${var.availability_zone}"
  encrypted         = "${var.encrypt_ebs_volumes}"
  type              = "${var.ebs_volume_type}"
  tags { Name = "${var.project_prefix}-${var.envname}-${element(split(",",var.app_names),0)}-usr_sap" }
}

resource "aws_ebs_volume" "usr_sap_sid" {
  size              = "${var.ebs_usr_sap_sid}"
  availability_zone = "${var.availability_zone}"
  encrypted         = "${var.encrypt_ebs_volumes}"
  type              = "${var.ebs_volume_type}"
  tags { Name = "${var.project_prefix}-${var.envname}-${element(split(",",var.app_names),0)}-usr_sap_sid" }
}

resource "aws_ebs_volume" "usr_sap_trans" {
  size              = "${var.ebs_usr_sap_trans}"
  availability_zone = "${var.availability_zone}"
  encrypted         = "${var.encrypt_ebs_volumes}"
  type              = "${var.ebs_volume_type}"
  tags { Name = "${var.project_prefix}-${var.envname}-${element(split(",",var.app_names),0)}-usr_sap_trans" }
}

resource "aws_ebs_volume" "sapmnt" {
  size              = "${var.ebs_sapmnt}"
  availability_zone = "${var.availability_zone}"
  encrypted         = "${var.encrypt_ebs_volumes}"
  type              = "${var.ebs_volume_type}"
  tags { Name = "${var.project_prefix}-${var.envname}-${element(split(",",var.app_names),0)}-sapmnt" }
}

resource "aws_ebs_volume" "media" {
  size              = "${var.ebs_media}"
  availability_zone = "${var.availability_zone}"
  encrypted         = "${var.encrypt_ebs_volumes}"
  type              = "${var.ebs_volume_type}"
  tags { Name = "${var.project_prefix}-${var.envname}-${element(split(",",var.app_names),0)}-media" }
}

resource "aws_ebs_volume" "swap" {
  size = "${lookup(var.swap_sizes,var.instance_type)}"
  availability_zone = "${var.availability_zone}"
  encrypted         = "${var.encrypt_ebs_volumes}"
  type              = "gp2"
  tags { Name = "${var.project_prefix}-${var.envname}-${element(split(",",var.app_names),0)}-swap" }
}
