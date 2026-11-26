# Lab 04 — Identity and Role-Based Access Control

## Objective
Understand Microsoft Entra identity concepts and Azure RBAC scope inheritance in a non-production subscription.

## Concepts
- Authentication proves identity; authorization determines permitted actions.
- Azure RBAC can be assigned at management group, subscription, resource group or resource scope.
- Prefer built-in least-privilege roles where suitable; use custom roles only with governance.
- Privileged access should be time-bound, monitored and separated from everyday accounts.

## Exercise
1. Review current role assignments in a lab resource group.
2. Identify inherited versus directly assigned roles.
3. Create a test user/group only if permitted by your subscription and identity policies.
4. Assign a narrowly scoped built-in role.
5. Validate expected allowed and denied actions.
6. Remove test assignments and identities after the exercise.

## Read-only inspection commands

```bash
az role assignment list --scope /subscriptions/<subscription-id>/resourceGroups/<resource-group> --output table
```

Replace placeholders locally. Never commit real tenant or subscription identifiers.

## Validation
Document principal type, role, scope, assignment source, expected permissions and test results. Verify removal of temporary access.
