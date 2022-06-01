resource "aws_cloudwatch_metric_alarm" "AAIC" {
  alarm_name                = "terraform-test-AAIC"
  comparison_operator       = "GreaterThanOrEqualToThreshold"
  evaluation_periods        = "2"
  metric_name               = "CPUUtilization"
  namespace                 = "AWS/EC2"
  period                    = "120"
  statistic                 = "Average"
  threshold                 = "80"
  alarm_description         = "This metric monitors ec2 cpu utilization"
  insufficient_data_actions = []
}
provider "aws" {
  region     = "us-east-1"
  access_key = "AKIAU3ONJH4B44ELFCNN"
  secret_key = "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"
 }
