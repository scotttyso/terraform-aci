#____________________________________________________________
#
# Collect the id of the Tenant Resource as an Output
#____________________________________________________________

output "id" {
  description = "Tenant Identifier."
  value       = aci_tenant.tenant.id
}
