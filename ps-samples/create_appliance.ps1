echo "Create appliance vms"

$rg = "gfsd-scarnegie-vnet"
$vnet = "vnet1"

az network vnet subnet create -n appliance -g $rg --vnet-name $vnet --address-prefix 192.168.3.0/24

az network nic create --vnet-name $vnet --private-ip-address 192.168.3.4 --name appliance-nic --ip-forwarding --subnet appliance -g $rg

az vm create --resource-group $rg --name appliance-vm `
 --admin-username appliance --admin-password Appliance753111 --authentication-type password  `
 --size Standard_DS1_v2 --image UbuntuLTS `
 --nics appliance-nic

 az vm list --output table