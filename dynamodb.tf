
data "local_file" "config" {
  filename = "config.json"
}

resource "aws_dynamodb_table" "example" {
  name         = var.dynamodb_table_name
  billing_mode = "PAY_PER_REQUEST"
  hash_key     = "process_id"

  attribute {
    name = "process_id"
    type = "S"
  }

  tags = {
    Environment = "prod"
  }
}

resource "aws_dynamodb_table_item" "example" {
  table_name = aws_dynamodb_table.example.name

  hash_key   = "process_id"
  item = file("config.json")
}
