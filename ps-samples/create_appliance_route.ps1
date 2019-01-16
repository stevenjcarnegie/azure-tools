echo "Create appliance route"

$rg = "gfsd-scarnegie-vnet"
$vnet = "vnet1"

 
az network route-table create --resource-group $rg --name appliance-route 

az network route-table route create --resource-group $rg --name route-to-backend `
 --route-table-name appliance-route --address-prefix 192.168.1.0/24 --next-hop-type VirtualAppliance `
 --next-hop-ip-address 192.168.3.4
 
az network vnet subnet update --resource-group $rg --vnet-name $vnet  --name frontend  --route-table appliance-route

