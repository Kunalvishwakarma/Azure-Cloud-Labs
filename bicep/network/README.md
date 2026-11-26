# Bicep — Isolated Lab Virtual Network

This template creates one virtual network with two subnets for a learning environment. It does not create VMs, public IPs, gateways, NSGs or peering.

## Review before deployment
- Confirm the selected subscription and resource group.
- Check that the address space does not overlap with connected networks.
- Review the API version and region availability.
- Add NSG rules and operational controls before hosting workloads.

## What-if and deployment

```bash
az deployment group what-if --resource-group <lab-resource-group> --template-file main.bicep
az deployment group create --resource-group <lab-resource-group> --template-file main.bicep
```

Replace the placeholder locally. A deployment can incur charges if you extend the template with billable services. Delete the dedicated lab resources when finished.
