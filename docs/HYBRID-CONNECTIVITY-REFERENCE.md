# Azure Hybrid Connectivity — Reference Design

> Conceptual design only. This is not a deployable topology or a recommendation for a specific enterprise.

## Design goals
- Provide controlled connectivity between private infrastructure and Azure.
- Avoid overlapping IP address spaces.
- Maintain explicit routing, DNS and security ownership.
- Design for failure, observability and operational support.

## Conceptual topology

```mermaid
flowchart LR
  ONPREM[On-premises network] --> EDGE[Customer edge]
  EDGE --> WAN[Private WAN or VPN]
  WAN --> HUB[Azure hub VNet]
  HUB --> FW[Central inspection / policy]
  FW --> SPOKE1[Workload spoke A]
  FW --> SPOKE2[Workload spoke B]
  DNS[Approved DNS resolver path] <--> HUB
  MON[Central monitoring] <-- HUB
```

## Connectivity options to evaluate

| Option | Typical considerations |
|---|---|
| Site-to-site VPN | Encryption, throughput, latency, redundancy, public internet dependency |
| ExpressRoute | Private connectivity, provider availability, routing, resiliency and cost |
| Virtual WAN | Managed connectivity architecture, scale and routing requirements |
| Private endpoints | Private access to supported platform services; DNS integration is critical |

Select based on business requirements, risk, cost, region/provider availability and operational capability.

## Design checklist
- [ ] Address spaces checked for overlap across all connected networks
- [ ] Routing ownership, propagation and failover documented
- [ ] DNS resolution and conditional forwarding designed
- [ ] Firewall inspection and permitted flows approved
- [ ] Redundant paths and failure behavior tested
- [ ] Identity and management access separated from workload traffic
- [ ] Monitoring, logging and alert ownership established
- [ ] Bandwidth, latency and data-transfer cost assessed
- [ ] Change, support and escalation model agreed

## Validation
Test name resolution, permitted and denied flows, failover behavior, latency, throughput and operational alerting in a controlled test environment. Never publish actual endpoints, IP addresses or routing tables.
