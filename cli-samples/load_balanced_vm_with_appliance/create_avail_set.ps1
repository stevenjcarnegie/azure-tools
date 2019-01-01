echo "Create backend vms"

$rg = "gfsd-scarnegie-vnet"
$vnet = "vnet1"

az vm availability-set create -g $rg -n availability-set