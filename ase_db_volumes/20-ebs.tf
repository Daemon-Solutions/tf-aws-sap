resource "aws_ebs_volume" "sybase" {
  count             = "${var.create_count}"
  size              = "${var.sybase_size}"
  availability_zone = "${var.availability_zone}"
  encrypted         = "${var.encrypt_volumes}"
  type              = "${var.volume_type}"
  tags { Name = "${var.name_prefix}-sybase" }
}

resource "aws_ebs_volume" "db_backups" {
  count             = "${var.create_count}"
  size              = "${var.db_backups_size}"
  availability_zone = "${var.availability_zone}"
  encrypted         = "${var.encrypt_volumes}"
  type              = "standard"
  tags { Name = "${var.name_prefix}-db-backups" }
}

resource "aws_ebs_volume" "sapdata1" {
  count             = "${var.create_count}"
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
  count             = "${var.create_count}"
  size              = "${var.sapdata_size}"
  availability_zone = "${var.availability_zone}"
  encrypted         = "${var.encrypt_volumes}"
  type              = "${var.volume_type}"
  tags { Name = "${var.name_prefix}-sapdata3" }
}

resource "aws_ebs_volume" "sapdata4" {
  count             = "${var.create_count}"
  size              = "${var.sapdata_size}"
  availability_zone = "${var.availability_zone}"
  encrypted         = "${var.encrypt_volumes}"
  type              = "gp2"
  tags { Name = "${var.name_prefix}-sapdata4" }
}

resource "aws_ebs_volume" "saplog" {
  count             = "${var.create_count}"
  size              = "${var.saplog_size}"
  availability_zone = "${var.availability_zone}"
  encrypted         = "${var.encrypt_volumes}"
  type              = "gp2"
  tags { Name = "${var.name_prefix}-saplog" }
}
