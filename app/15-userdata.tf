resource "template_file" "user_data" {
  template = "${file("${var.user_data_file_path}")}"

  lifecycle {
    create_before_destroy = true
  }

  vars {
    app_name  = "${element(split(",",var.app_names),0)}"
    envname   = "${var.envname}"
    envtype   = "${var.envtype}"
    region    = "${var.aws_region}"
    domain    = "${var.domain}"
    sap_sid   = "${var.sap_sid}"
    ebs_list  = "${aws_ebs_volume.usr_sap.id}:xvdh,${aws_ebs_volume.usr_sap_sid.id}:xvdi,${aws_ebs_volume.usr_sap_trans.id}:xvdj,${aws_ebs_volume.sapmnt.id}:xvdk,${aws_ebs_volume.media.id}:xvdl"
    extra_ebs = "${var.extra_ebs}"
    swap_ebs  = "${aws_ebs_volume.swap.id}"
  }
}
