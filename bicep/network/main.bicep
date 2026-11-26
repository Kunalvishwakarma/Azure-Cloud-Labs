@description('Azure region for the lab network.')
param location string = resourceGroup().location

@description('Name of the lab virtual network.')
param vnetName string = 'vnet-lab-hub-01'

@description('Address space for this isolated lab. Check for overlap before deployment.')
param addressPrefix string = '10.20.0.0/16'

resource vnet 'Microsoft.Network/virtualNetworks@2023-09-01' = {
  name: vnetName
  location: location
  properties: {
    addressSpace: {
      addressPrefixes: [
        addressPrefix
      ]
    }
    subnets: [
      {
        name: 'snet-workload'
        properties: {
          addressPrefix: '10.20.1.0/24'
        }
      }
      {
        name: 'snet-management'
        properties: {
          addressPrefix: '10.20.10.0/24'
        }
      }
    ]
  }
  tags: {
    Environment: 'Lab'
    Purpose: 'PortfolioLearning'
    Owner: 'Student'
  }
}

output virtualNetworkId string = vnet.id
output virtualNetworkName string = vnet.name
