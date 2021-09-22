#____________________________________________________________
#
# Thermal Policy Variables Section.
#____________________________________________________________

variable "alias" {
  default     = ""
  description = "A changeable name for a given object. While the name of an object, once created, can’t be changed, the Alias is a field that can be changed."
  type        = string
}

variable "description" {
  default     = ""
  description = "Description for the Resource."
  type        = string
}

variable "monEPGPol_dn" {
  default     = "default"
  description = "Relation to class monEPGPol.  The monitoring policy name for the EPG semantic scope."
  type = string
}

variable "name" {
  default     = "tenant"
  description = "Name for the Resource."
  type        = string
}

variable "tags" {
  default     = ""
  description = "A search keyword or term that is assigned to the Tenant. Tags allow you to group multiple objects by descriptive names. You can assign the same tag name to multiple objects and you can assign one or more tag names to a single object. "
  type        = string
}

variable "vzFilter_dn_list" {
  default     = []
  description = "List of Tag Attributes to Assign to the Policy."
  type        = set(string)
}
