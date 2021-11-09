#__________________________________________________________________
#
# Application Profile Resource
# API Information:
# - Class: "fvAp"
# - Distinguished Name: "uni/tn-{Tenant}/ap-{Application Profile}"
# GUI Location: Tenants > Tenant > Application Profile
#__________________________________________________________________

resource "aci_application_profile" "app" {
  description               = var.description
  tenant_dn                 = var.tenant
  annotation                = var.annotations
  name                      = var.name
  name_alias                = var.alias
  prio                      = var.qos_class
  relation_fv_rs_ap_mon_pol = var.monitoring_policy
}
