# Lab 03 — Azure Monitor and Alerting

## Objective
Explore metrics, diagnostic settings, Log Analytics and actionable alert design.

## Exercise outline
1. Deploy a disposable test resource in a dedicated lab resource group.
2. Create or select a Log Analytics workspace.
3. Enable supported diagnostic settings for the resource.
4. Review platform metrics and available logs.
5. Create a low-noise alert with an explicit condition, severity, owner and action group.
6. Trigger a safe test condition and confirm notification delivery.
7. Document retention and cost implications.

## Example KQL starter

```kusto
AzureActivity
| where TimeGenerated > ago(24h)
| summarize EventCount=count() by OperationNameValue, ActivityStatusValue
| order by EventCount desc
```

The table and fields available depend on diagnostic configuration and ingestion mode. Adapt queries to the workspace schema.

## Alert design checklist
- [ ] Condition measures a meaningful service or security signal.
- [ ] Threshold is based on baseline or documented requirement.
- [ ] Alert has severity, owner and response runbook.
- [ ] Notification path is tested.
- [ ] Duplicate/noisy alerts are reviewed.
- [ ] Ingestion and retention costs are understood.

## Safe publication
Use synthetic screenshots and sample data. Never publish tenant IDs, workspace IDs, real IP addresses, personal data or security incident details.
