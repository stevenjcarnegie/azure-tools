echo "Creating vnet and subnets"

$vnet = "vnet1"
$rg = "gfsd-scarnegie-vnet"

echo "Create $vnet in $rg"

az group create -l 'East US' -n $rg  --tags "owner=scarnegie"

az network vnet create --name $vnet -g $rg --address-prefix 192.168.0.0/16 --tags "owner=scarnegie"

az network vnet subnet create -n frontend -g $rg --vnet-name $vnet --address-prefix 192.168.1.0/24

az network vnet subnet create -n backend -g $rg --vnet-name $vnet --address-prefix 192.168.2.0/24

az network vnet list  --output table
