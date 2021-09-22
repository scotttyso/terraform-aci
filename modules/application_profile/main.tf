#__________________________________________________________________
#
# Application Profile Resource
# API Information:
# - Class: "fvAp"
# - Distinguished Name: "uni/tn-{Tenant}/ap-{Application Profile}"
# GUI Location: Tenants > Tenant > Application Profile
#__________________________________________________________________

resource "aci_application_profile" "app" {
  # description                   = var.description
  tenant_dn                 = var.tenant_dn
  annotation                = var.tags
  name                      = var.name
  name_alias                = var.alias
  prio                      = var.priority
  relation_fv_rs_ap_mon_pol = var.monEPGPol_id
}
