# dynamodb-terraform

Creacion de una tabla de dynamodb mediante terraform.
Tambien crea un item mediante usando config.json. 

### Requisitos

En la raiz del proyecto debe ir : 

- Carpeta .aws para incorporar los archivos config y credentials.
- Para el caso de Windows se puede incorporar el ejecutable terraform.exe para realizar los despliegues. 
### Instalación

Para usar el proyecto, confirar las credenciales dentro de .aws y ejecutar el siguiente comando.

```
terraform init
terraform plan -var-file=dev.tfvars
terraform apply
```
En caso de usar el ejeutable en la raiz del proyecto (Windows) realizar lo siguiente
```
.\terraform init
.\terraform plan -var-file=dev.tfvars
.\terraform apply
```

Para no usar -var-file, simplemente cambiar el nombre del archivo a terraform.tfvars.


