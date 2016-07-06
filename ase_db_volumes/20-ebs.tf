resource "aws_ebs_volume" "db_backups" {
  size              = "${var.db_backups_size}"
  availability_zone = "${var.availability_zone}"
  encrypted         = "${var.encrypt_volumes}"
  type              = "standard"
  tags {
    Name = "${var.name_prefix}-db-backups"
    For  = "${var.name_prefix}:xvdc"
  }
}

resource "aws_ebs_volume" "sybase" {
  size              = "${var.sybase_size}"
  availability_zone = "${var.availability_zone}"
  encrypted         = "${var.encrypt_volumes}"
  type              = "${var.volume_type}"
  tags {
    Name = "${var.name_prefix}-sybase"
    For  = "${var.name_prefix}:xvdm"
  }
}

resource "aws_ebs_volume" "sapdata1" {
  size              = "${var.sapdata_size}"
  availability_zone = "${var.availability_zone}"
  encrypted         = "${var.encrypt_volumes}"
  type              = "${var.volume_type}"
  tags {
    Name = "${var.name_prefix}-sapdata1"
    For  = "${var.name_prefix}:xvdn"
  }
}

resource "aws_ebs_volume" "sapdata2" {
  size              = "${var.sapdata_size}"
  availability_zone = "${var.availability_zone}"
  encrypted         = "${var.encrypt_volumes}"
  type              = "${var.volume_type}"
  tags {
    Name = "${var.name_prefix}-sapdata2"
    For  = "${var.name_prefix}:xvdo"
  }
}

resource "aws_ebs_volume" "sapdata3" {
  size              = "${var.sapdata_size}"
  availability_zone = "${var.availability_zone}"
  encrypted         = "${var.encrypt_volumes}"
  type              = "${var.volume_type}"
  tags {
    Name = "${var.name_prefix}-sapdata3"
    For  = "${var.name_prefix}:xvdp"
  }
}

resource "aws_ebs_volume" "sapdata4" {
  size              = "${var.sapdata_size}"
  availability_zone = "${var.availability_zone}"
  encrypted         = "${var.encrypt_volumes}"
  type              = "gp2"
  tags {
    Name = "${var.name_prefix}-sapdata4"
    For  = "${var.name_prefix}:xvdq"
  }
}

resource "aws_ebs_volume" "saplog" {
  size              = "${var.saplog_size}"
  availability_zone = "${var.availability_zone}"
  encrypted         = "${var.encrypt_volumes}"
  type              = "gp2"
  tags {
    Name = "${var.name_prefix}-saplog"
    For  = "${var.name_prefix}:xvdr"
  }
}
