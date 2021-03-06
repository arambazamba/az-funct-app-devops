rnd=14459
grp=az400-m11-funcapp-$rnd
loc=westeurope
app=m11funcapp-$rnd
storage=m11funcapp$rnd

az group create -n $grp -l $loc

az storage account  create -n $storage -g $grp --sku Standard_LRS

az functionapp create -n $app -g $grp --storage-account $storage --consumption-plan-location $loc --runtime node --runtime-version 12 --functions-version 3

echo "Funtions app created: $app"