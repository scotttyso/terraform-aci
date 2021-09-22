#____________________________________________________________
#
# Collect the Distinguished Name of the Tenant Resource
#____________________________________________________________

output "dn" {
  description = "Tenant Distinguished Name."
  value       = aci_tenant.tenant.id
}
