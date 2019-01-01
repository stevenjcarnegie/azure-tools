echo "Create frontend vms"

$rg = "gfsd-scarnegie-vnet"
$vnet = "vnet1"


az vm create --resource-group $rg --name frontend-vm `
 --admin-username frontend --admin-password Frontend753111 --authentication-type password  `
 --size Standard_DS1_v2 --image UbuntuLTS `
 --vnet-name $vnet --subnet frontend --public-ip-address-allocation dynamic `

az vm list --output table
