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

variable "monEPGPol_id" {
  default     = "default"
  description = "Relation to class monEPGPol.  The monitoring policy name for the EPG semantic scope."
  type        = string
}

variable "name" {
  default     = "app"
  description = "Name for the Resource."
  type        = string
}

variable "priority" {
  default     = "unspecified"
  description = <<-EOT
  A configurable set of system classes that define the traffic priority for the associated EPG. Each system class manages one lane of traffic. The priority class can be:
  o unspecified - (Default)
  o level1 — Class 1 Differentiated Services Code Point (DSCP) value.
  o level2 — Class 2 DSCP value.
  o level3 — Class 3 DSCP value.
  o level4 — Class 4 DSCP value.
  o level5 — Class 5 DSCP value.
  o level6 — Class 6 DSCP value.
  EOT
  type        = set(string)
}

variable "tags" {
  default     = ""
  description = "A search keyword or term that is assigned to the Tenant. Tags allow you to group multiple objects by descriptive names. You can assign the same tag name to multiple objects and you can assign one or more tag names to a single object. "
  type        = string
}

variable "tenant_dn" {
  description = "Distinguished name of parent Tenant object."
  type        = string
}
