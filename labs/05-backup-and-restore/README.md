# Lab 05 — Backup and Restore Validation

## Objective
Understand backup policy design and prove that a protected test workload can be restored. Use only a disposable, non-production environment.

## Safety and cost
- Confirm the active subscription, region and resource names.
- Review current Azure Backup pricing, retention and redundancy options.
- Use synthetic test data.
- Do not enable protection for production resources as part of this lab.
- Restore to an isolated test location and delete lab resources after evidence is captured.

## Exercise outline
1. Review the backup requirements for a fictional workload.
2. Define recovery objectives with a hypothetical service owner.
3. Select an appropriate supported backup method and vault configuration.
4. Enable protection for a disposable test resource.
5. Run an on-demand backup where supported.
6. Perform a restore to an isolated target.
7. Validate file/application integrity and access permissions.
8. Record actual restore duration, data recovery point and any limitations.
9. Confirm monitoring and alerting for backup failures.

## Evidence checklist
- [ ] Backup policy and retention recorded
- [ ] Protection status confirmed
- [ ] Recovery point created
- [ ] Restore completed to isolated target
- [ ] Data/application validation completed
- [ ] Actual recovery time and recovery point documented
- [ ] Cleanup completed

## Learning outcome
A successful backup job is not proof of recoverability. Record restore evidence and service-owner acceptance.
