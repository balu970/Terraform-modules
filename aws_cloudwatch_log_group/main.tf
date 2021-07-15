####################################################################
#### Created by : Kalyan Bhave ####
#### Date : 20-Jun-2020 ####
#### Updated by : Balakrishna/ Praveen kumar/ Sathish kumar ####
####################################################################
resource "aws_cloudwatch_log_group" "cwlg" {
  name  = var.name
  retention_in_days = 90
  tags = {
    Environment = var.environment
  }
}