resource "aws_cloudwatch_metric_alarm" "autorecover" {
  alarm_name          = "${var.project_prefix}-${var.envtype}-${var.envname}-${element(split(",",var.app_names),0)}"
  namespace           = "AWS/EC2"
  evaluation_periods  = "2"
  period              = "60"
  alarm_description   = "This metric auto recovers EC2 instances"
  alarm_actions       = ["arn:aws:automate:${var.aws_region}:ec2:recover"]
  statistic           = "Minimum"
  comparison_operator = "GreaterThanThreshold"
  threshold           = "0"
  metric_name         = "StatusCheckFailed_System"
  dimensions {
      InstanceId = "${aws_instance.app.id}"
  }
}
