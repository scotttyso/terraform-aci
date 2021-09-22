#__________________________________________________________________
#
# Tenant Resource
# API Information:
# - Class: "fvTenant"
# - Distinguished Name: "uni/tn-{tenant}"
# GUI Location: Tenants > Create Tenant
#__________________________________________________________________

resource "aci_tenant" "tenant" {
  annotation                    = var.tags
  description                   = var.description
  name                          = var.name
  name_alias                    = var.alias
  relation_fv_rs_tenant_mon_pol = var.monEPGPol_dn
  relation_fv_rs_tn_deny_rule   = var.vzFilter_dn_list
}
