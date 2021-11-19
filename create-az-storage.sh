#Para ver todos los comandos que ofrece Azure CLI
az

#Para iniciar sesión en la suscripción sobre la que quieres operar
az login

#Variables
RESOURCE_GROUP="Tour-Of-Heroes"
STORAGE_NAME="<YOUR_STORAGE_ACCOUNT_NAME>"
LOCATION="northeurope"

#Crear una cuenta de almacenamiento dentro del grupo de recursos Tour-Of-Heroes
az storage account create --resource-group $RESOURCE_GROUP --name $STORAGE_NAME --location $LOCATION 

#Crear el contenedor de los superheroes
az storage container create --name heroes --account-name $STORAGE_NAME --public-access blob

#Crear el contenedor de los alter egos
az storage container create --name alteregos --account-name $STORAGE_NAME

#Subir alteregos
az storage blob upload-batch --destination alteregos --source src/assets/alteregos/. --account-name $STORAGE_NAME

#Los héroes los subimos con Azure Storage Explorer