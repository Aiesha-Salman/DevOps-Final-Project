data "aws_route53_zone" "primary" {
  name         = var.domain_name
  private_zone = false
}

resource "aws_route53_record" "alb" {
  zone_id = data.aws_route53_zone.primary.zone_id
  name    = "ayesha.unmashable.online"
  type    = "A"
  alias {
    name                   = aws_lb.app_alb.dns_name
    zone_id                = aws_lb.app_alb.zone_id
    evaluate_target_health = true
  }
}

resource "aws_route53_record" "al2_cname" {
  zone_id = data.aws_route53_zone.primary.zone_id
  name    = "ayeshal2.unmashable.online"
  type    = "CNAME"
  ttl     = 300
  records = [aws_lb.app_alb.dns_name]
}

resource "aws_route53_record" "al2023_cname" {
  zone_id = data.aws_route53_zone.primary.zone_id
  name    = "ayeshal2023.unmashable.online"
  type    = "CNAME"
  ttl     = 300
  records = [aws_lb.app_alb.dns_name]
}

resource "aws_route53_record" "ubuntu_cname" {
  zone_id = data.aws_route53_zone.primary.zone_id
  name    = "ayeshaubuntu.unmashable.online"
  type    = "CNAME"
  ttl     = 300
  records = [aws_lb.app_alb.dns_name]
}
