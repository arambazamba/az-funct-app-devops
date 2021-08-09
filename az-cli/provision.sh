grp=az400-m11-funcapp-$1
loc=westeurope
app=m11funcapp-$1
storage=m11funcapp$1

echo $1

az group create -n $grp -l $loc

az storage account  create -n $storage -g $grp --sku Standard_LRS

az functionapp create -n $app -g $grp --storage-account $storage --consumption-plan-location $loc --runtime node --runtime-version 12 --functions-version 3

echo "Funtions app created: $app"