resource "aws_sns_topic" "cloudops_alerts" {
  name = "CloudOps-Alerts"
}

resource "aws_sns_topic_subscription" "email_alert" {
  topic_arn = aws_sns_topic.cloudops_alerts.arn
  protocol  = "email"
  endpoint  = "sandeepsathya2643@gmail.com"
}