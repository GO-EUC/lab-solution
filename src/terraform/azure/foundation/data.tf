data "http" "myip" {
  count = var.public_access ? 1 : 0
  url   = "https://ipv4.icanhazip.com"
}
