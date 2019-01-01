echo "Create backend vms"

$rg = "gfsd-scarnegie-vnet"
$vnet = "vnet1"

az vm availability-set create --resource-group $rg --name backendavailset

az vm create --resource-group $rg --name backend-vm-1 `
 --admin-username backend1 --admin-password Backend1753111 --authentication-type password  `
 --size Standard_DS1_v2 --image UbuntuLTS `
 --vnet-name $vnet --subnet backend --public-ip-address-allocation dynamic `
 --availability-set backendavailset

az vm create --resource-group $rg --name backend-vm-2 `
 --admin-username backend2 --admin-password Backend1753111 --authentication-type password  `
 --size Standard_DS1_v2 --image UbuntuLTS `
 --vnet-name $vnet --subnet backend --public-ip-address-allocation dynamic `
 --availability-set backendavailset

az vm list --output table
