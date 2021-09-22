#____________________________________________________________
#
# Collect the id of the Application Profile as an Output
#____________________________________________________________

output "dn" {
  description = "Application Profile Distinguished Name."
  value       = aci_application_profile.app.id
}
