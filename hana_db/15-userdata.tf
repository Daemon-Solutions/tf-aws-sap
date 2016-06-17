resource "template_file" "user_data" {
  template = "${file("${var.user_data_file_path}")}"

  lifecycle {
    create_before_destroy = true
  }

  vars {
    app_name        = "${var.app_name}"
    envname         = "${var.envname}"
    envtype         = "${var.envtype}"
    region          = "${var.aws_region}"
    domain          = "${var.domain}"
    sap_sid         = "${var.sap_sid}"
    swap_ebs        = "${aws_ebs_volume.swap.id}"
    stripe_ebs_list = "${aws_ebs_volume.stripe1.id}:xvdd,${aws_ebs_volume.stripe2.id}:xvde,${aws_ebs_volume.stripe3.id}:xvdf,${aws_ebs_volume.stripe4.id}:xvdg"
    sap_ebs_list    = "${aws_ebs_volume.db_backups.id}:xvdc,${aws_ebs_volume.usr_sap.id}:xvdh,${aws_ebs_volume.media.id}:xvdi"
  }
}
