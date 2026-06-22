# Terraform Cloud Setup ☁️

Terraform Cloud workspace management with policy-as-code.

## Workspaces

| Workspace | Environment | Auto-Apply |
|-----------|------------|-----------|
| staging | staging | Yes |
| production | production | No (manual) |

## Policies

```hcl
policy "enforce-tags" {
  enforcement_level = "mandatory"
}
```

## License

MPL-2.0