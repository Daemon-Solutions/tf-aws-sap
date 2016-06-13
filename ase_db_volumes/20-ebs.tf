resource "aws_ebs_volume" "sybase" {
  size              = "${var.sybase_size}"
  availability_zone = "${var.availability_zone}"
  encrypted         = "${var.encrypt_volumes}"
  type              = "${var.volume_type}"
  tags { Name = "${var.name_prefix}-sybase" }
}


resource "aws_ebs_volume" "sapdata1" {
  size              = "${var.sapdata_size}"
  availability_zone = "${var.availability_zone}"
  encrypted         = "${var.encrypt_volumes}"
  type              = "${var.volume_type}"
  tags { Name = "${var.name_prefix}-sapdata1" }
}

resource "aws_ebs_volume" "sapdata2" {
  size              = "${var.sapdata_size}"
  availability_zone = "${var.availability_zone}"
  encrypted         = "${var.encrypt_volumes}"
  type              = "${var.volume_type}"
  tags { Name = "${var.name_prefix}-sapdata2" }
}

resource "aws_ebs_volume" "sapdata3" {
  size              = "${var.sapdata_size}"
  availability_zone = "${var.availability_zone}"
  encrypted         = "${var.encrypt_volumes}"
  type              = "${var.volume_type}"
  tags { Name = "${var.name_prefix}-sapdata3" }
}

resource "aws_ebs_volume" "sapdata4" {
  size              = "${var.sapdata_size}"
  availability_zone = "${var.availability_zone}"
  encrypted         = "${var.encrypt_volumes}"
  type              = "gp2"
  tags { Name = "${var.name_prefix}-sapdata4" }
}

resource "aws_ebs_volume" "saplog" {
  size              = "${var.saplog_size}"
  availability_zone = "${var.availability_zone}"
  encrypted         = "${var.encrypt_volumes}"
  type              = "gp2"
  tags { Name = "${var.name_prefix}-saplog" }
}
