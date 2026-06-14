resource "aws_cloudwatch_metric_alarm" "high_cpu" {
  alarm_name          = "Terraform-HighCPU-Alarm"
  comparison_operator = "GreaterThanThreshold"
  evaluation_periods  = 1
  metric_name         = "CPUUtilization"
  namespace           = "AWS/EC2"
  period              = 300
  statistic           = "Average"
  threshold           = 70

  dimensions = {
    InstanceId = aws_instance.cloudops_server.id
  }

  alarm_actions = [
    aws_sns_topic.cloudops_alerts.arn
  ]

  alarm_description = "Alarm when EC2 CPU exceeds 70%"
}