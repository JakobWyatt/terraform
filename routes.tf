data "aws_route53_zone" "jakobwyatt" {
  name         = "jakobwyatt.com."
}

resource "aws_route53_record" "github_pages_challenge" {
  zone_id = data.aws_route53_zone.jakobwyatt.zone_id
  name    = "_github-pages-challenge-JakobWyatt.${data.aws_route53_zone.jakobwyatt.name}"
  type    = "TXT"
  ttl     = 300
  records = ["ebe6a7a3eab9b39cb9e1d9f6272b8e"]
}

resource "aws_route53_record" "jakobwyatt_blog" {
  zone_id = data.aws_route53_zone.jakobwyatt.zone_id
  name    = "blog.${data.aws_route53_zone.jakobwyatt.name}"
  type    = "CNAME"
  ttl     = 300
  records = ["jakobwyatt.github.io"]
}
