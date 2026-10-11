data "azurerm_private_dns_soa_record" "private_dns_soa_record_lookup" {
  for_each = var.private_dns_soa_record_lookup

  resource_group_name = each.value.resource_group_name
  zone_name           = each.value.zone_name
  name                = each.value.name
}

