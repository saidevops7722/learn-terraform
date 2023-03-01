resource "aws_route53_record" "record" {
  zone_id = "Z0697752SVK7F3TOOD2N"
  name    = "${var.component}-dev.devopsb71.site"
  type    = "A"
  ttl     = 30
  records = [var.private_ip]
}

variable "private_ip" {}
variable "component" {}
