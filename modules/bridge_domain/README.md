# tenant - ACI Tenant Terraform Module

## Usage

```hcl
module "tenant" {

  source = "terraform-cisco-modules/aci//modules/tenant"

  # omitted...
}
```

This module will create a Tenant in the APIC.  

These resources are consumed

* [Tenant](https://registry.terraform.io/providers/CiscoDevNet/aci/latest/docs/resources/tenant)

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
| [aci_tenant.tenant](https://registry.terraform.io/providers/ciscodevnet/aci/latest/docs/resources/tenant) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_alias"></a> [alias](#input\_alias) | A changeable name for a given object. While the name of an object, once created, can’t be changed, the Alias is a field that can be changed. | `string` | `""` | no |
| <a name="input_description"></a> [description](#input\_description) | Description for the Policy. | `string` | `""` | no |
| <a name="input_monEPGPol_id"></a> [monEPGPol\_id](#input\_monEPGPol\_id) | Relation to class monEPGPol.  The monitoring policy name for the EPG semantic scope. | `string` | `"default"` | no |
| <a name="input_name"></a> [name](#input\_name) | Name for the Resource. | `string` | `"tenant"` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | A search keyword or term that is assigned to the Tenant. Tags allow you to group multiple objects by descriptive names. You can assign the same tag name to multiple objects and you can assign one or more tag names to a single object. | `string` | `""` | no |
| <a name="input_vzFilter_ids"></a> [vzFilter\_ids](#input\_vzFilter\_ids) | List of Tag Attributes to Assign to the Policy. | `set(string)` | `[]` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_id"></a> [id](#output\_id) | Tenant Identifier. |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
