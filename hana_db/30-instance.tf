resource "aws_instance" "app" {
  ami                         = "${var.ami_id}"
  instance_type               = "${var.instance_type}"
  subnet_id                   = "${var.instance_subnet}"
  ebs_optimized               = "${var.ebs_optimised}"
  key_name                    = "${var.key_name}"
  iam_instance_profile        = "${var.iam_instance_profile}"
  disable_api_termination     = "${var.termination_protection}"
  ebs_optimized               = "${var.ebs_optimised}"
  associate_public_ip_address = "${var.associate_public_ip_address}"
  user_data                   = "${template_file.user_data.rendered}"
  vpc_security_group_ids      = ["${split(",", var.security_groups)}"]
  root_block_device           = { volume_size = "${var.root_volume_size}" }
  tags {
    Name        = "${var.project_prefix}-${var.envtype}-${var.envname}-${var.app_name}"
    Environment = "${var.envname}"
    Service     = "${var.app_name}"
  }
}
