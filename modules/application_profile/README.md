# application_profile - ACI Application Profile Terraform Module

## Usage

```hcl
module "application_profile" {

  source = "terraform-cisco-modules/aci//modules/application_profile"

  # omitted...
}
```

This module will create an Application Profile in the APIC.  

These resources are consumed

* [application_profile](https://registry.terraform.io/providers/CiscoDevNet/aci/latest/docs/resources/application_profile)

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aci"></a> [aci](#provider\_aci) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aci_application_profile.app](https://registry.terraform.io/providers/ciscodevnet/aci/latest/docs/resources/application_profile) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_alias"></a> [alias](#input\_alias) | A changeable name for a given object. While the name of an object, once created, can’t be changed, the Alias is a field that can be changed. | `string` | `""` | no |
| <a name="input_annotations"></a> [annotations](#input\_annotations) | A search keyword or term that is assigned to the Tenant. Tags allow you to group multiple objects by descriptive names. You can assign the same tag name to multiple objects and you can assign one or more tag names to a single object. | `string` | `""` | no |
| <a name="input_description"></a> [description](#input\_description) | Description for the Resource. | `string` | `""` | no |
| <a name="input_monitoring_policy"></a> [monitoring\_policy](#input\_monitoring\_policy) | Relation to class monEPGPol.  The monitoring policy name for the EPG semantic scope. | `string` | `"default"` | no |
| <a name="input_name"></a> [name](#input\_name) | Name for the Resource. | `string` | `"app"` | no |
| <a name="input_qos_class"></a> [qos\_class](#input\_qos\_class) | A configurable set of system classes that define the traffic priority for the associated EPG. Each system class manages one lane of traffic. The priority class can be:<br>o unspecified - (Default)<br>o level1 — Class 1 Differentiated Services Code Point (DSCP) value.<br>o level2 — Class 2 DSCP value.<br>o level3 — Class 3 DSCP value.<br>o level4 — Class 4 DSCP value.<br>o level5 — Class 5 DSCP value.<br>o level6 — Class 6 DSCP value. | `string` | `"unspecified"` | no |
| <a name="input_tenant"></a> [tenant](#input\_tenant) | Distinguished name of parent Tenant object. | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_dn"></a> [dn](#output\_dn) | Application Profile Distinguished Name. |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
