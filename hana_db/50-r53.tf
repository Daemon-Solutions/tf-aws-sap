resource "aws_route53_record" "dns" {
  zone_id = "${var.r53_zone}"
  name    = "${replace(var.app_name,"_","")}.${var.domain}"
  type    = "A"
  ttl     = "300"
  records = ["${aws_instance.app.private_ip}"]
}
