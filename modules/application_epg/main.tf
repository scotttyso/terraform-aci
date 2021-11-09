#__________________________________________________________________
#
# Tenant Resource
# API Information:
# - Class: "fvAEPg"
# - Distinguished Name: "/uni/tn-{Tenant}/ap-{App_Profile}/epg-{EPG}"
# GUI Location: Tenants > {Tenant} > Application Profiles > {App_Profile} > Application EPGs > {EPG}
#__________________________________________________________________

resource "aci_application_epg" "tenant" {
  annotation                    = var.annotations
  application_profile_dn        = var.application_profile_dn
  description                   = var.description
  name                          = var.name
  name_alias                    = var.alias
  relation_fv_rs_tenant_mon_pol = var.monitoring_policy
  relation_fv_rs_tn_deny_rule   = var.vzFilter_ids
  tenant_dn                     = var.tenant
    exception_tag                   = var.contract_exception_tag
    flood_on_encap                  = var.flood_in_encapsulation
    fwd_ctrl                        = var.forward_control
    has_mcast_source                = "{{has_mcast}}"
    is_attr_based_epg               = var.useg_epg
    match_t                         = var.label_match_criteria
    pc_enf_pref                     = var.intra_epg_isolation
    pref_gr_memb                    = var.preferrred_group_member
    prio                            = var.qos_class
    shutdown                        = var.epg_admin_state
    relation_fv_rs_bd               = var.bridge_domain
    relation_fv_rs_sec_inherited    = var.epg_contract_master
    relation_fv_rs_cons_if          = var.consumed_contract_interface
    relation_fv_rs_prov_def         = var.xyz
    relation_fv_rs_prot_by          = var.taboo_contract
    relation_fv_rs_cust_qos_pol     = var.custom_qos
    relation_fv_rs_dpp_pol          = var.data_plane_policier
    relation_fv_rs_intra_epg        = var.intra_epg_contract
    relation_fv_rs_aepg_mon_pol     = var.monitoring_policy
    relation_fv_rs_trust_ctrl       = var.fhs_trust_control_policy
    relation_fv_rs_graph_def        = var.xyz
}
