# Lab 01 — Resource Governance Foundations

## Objective
Practice resource organization, tagging, access boundaries and cost visibility in a dedicated non-production Azure subscription.

## Prerequisites
- Personal/test Azure subscription with permission to create a resource group.
- Azure CLI installed and authenticated.
- Budget alert configured in the subscription.
- No production data or credentials.

## Example workflow

```bash
az account show --output table
az group create --name rg-lab-governance-01 --location norwayeast --tags Environment=Lab Owner=Student CostCentre=Learning
az group show --name rg-lab-governance-01 --output json
```

Confirm the active subscription and region before creating resources. Region availability and service pricing vary.

## Validation
- Confirm the resource group exists in the intended subscription.
- Review tags and ownership metadata.
- Review role assignments and ensure no broad access is granted unnecessarily.
- Confirm budget and cost alerts are active.

## Cleanup
If this is a disposable lab and contains no retained resources:

```bash
az group delete --name rg-lab-governance-01 --yes --no-wait
```

Deletion is destructive. Verify the resource group name and contents before running it.

## Learning notes
Record the governance policies applied, permission model, cost controls and any policy-denied operations. Do not publish subscription IDs, tenant IDs or credentials.
