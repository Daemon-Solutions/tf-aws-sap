output "ebs_list" {
  value = "${aws_ebs_volume.sybase.id}:xvdm,${aws_ebs_volume.sapdata1.id}:xvdn,${aws_ebs_volume.sapdata2.id}:xvdo,${aws_ebs_volume.sapdata3.id}:xvdp,${aws_ebs_volume.sapdata4.id}:xvdq"
}
