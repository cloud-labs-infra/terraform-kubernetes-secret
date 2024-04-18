# Kubernetes Secret
<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | ~> 1.7 |
| <a name="requirement_kubernetes"></a> [kubernetes](#requirement\_kubernetes) | ~>2.20 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_kubernetes"></a> [kubernetes](#provider\_kubernetes) | ~>2.20 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [kubernetes_secret_v1.main](https://registry.terraform.io/providers/hashicorp/kubernetes/latest/docs/resources/secret_v1) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_annotations"></a> [annotations](#input\_annotations) | An unstructured key value map stored with the secret that may be used to store arbitrary metadata | `map(string)` | `{}` | no |
| <a name="input_data"></a> [data](#input\_data) | Data contains the configuration data | `map(string)` | `{}` | no |
| <a name="input_immutable"></a> [immutable](#input\_immutable) | Ensures that data stored in the Secret cannot be updated | `bool` | `false` | no |
| <a name="input_labels"></a> [labels](#input\_labels) | Map of string keys and values that can be used to organize and categorize the secret | `map(string)` | `{}` | no |
| <a name="input_name"></a> [name](#input\_name) | Kubernetes namespace name | `string` | n/a | yes |
| <a name="input_namespace"></a> [namespace](#input\_namespace) | Namespace defines the space within which name of the secret must be unique | `string` | n/a | yes |
| <a name="input_type"></a> [type](#input\_type) | The secret type | `string` | `"Opaque"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_generation"></a> [generation](#output\_generation) | A sequence number representing a specific generation of the desired state |
| <a name="output_name"></a> [name](#output\_name) | The name of secret |
| <a name="output_uid"></a> [uid](#output\_uid) | The unique in time and space value for this secret |
<!-- END_TF_DOCS -->