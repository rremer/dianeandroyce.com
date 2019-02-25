resource "cloudflare_zone" "main" {
  zone = "${var.dns_zone_main}"
}

resource "cloudflare_record" "main" {
  domain = "${var.dns_zone_main}"
  name   = "@"
  value  = "104.198.14.52"
  type   = "A"
  ttl    = 3600
}

resource "cloudflare_record" "www" {
  domain = "${var.dns_zone_main}"
  name   = "www"
  value  = "104.198.14.52"
  type   = "A"
  ttl    = 3600
}
