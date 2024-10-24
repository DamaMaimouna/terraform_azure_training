| **Catégorie**              | **Commande**                                                                                          | **Description**                             |
|----------------------------|------------------------------------------------------------------------------------------------------|---------------------------------------------|
| **Connexion et Comptes**    | `az login`                                                                                           | Se connecter à Azure                        |
|                            | `az logout`                                                                                          | Se déconnecter d'Azure                      |
|                            | `az account list --output table`                                                                      | Lister les abonnements disponibles          |
|                            | `az account set --subscription "<Nom ou ID>"`                                                        | Changer d'abonnement                        |
| **Groupes de Ressources**   | `az group list --output table`                                                                        | Lister les groupes de ressources            |
|                            | `az group create --name <nom_du_groupe> --location <région>`                                          | Créer un groupe de ressources               |
|                            | `az group delete --name <nom_du_groupe>`                                                              | Supprimer un groupe de ressources           |
| **Machines Virtuelles**     | `az vm list --output table`                                                                           | Lister les machines virtuelles              |
|                            | `az vm create --resource-group <nom_du_groupe> --name <nom_vm> --image <image> --admin-username <nom_utilisateur> --generate-ssh-keys` | Créer une VM                                |
|                            | `az vm start --name <nom_vm> --resource-group <nom_du_groupe>`                                        | Démarrer une VM                             |
|                            | `az vm stop --name <nom_vm> --resource-group <nom_du_groupe>`                                         | Arrêter une VM                              |
|                            | `az vm delete --name <nom_vm> --resource-group <nom_du_groupe>`                                       | Supprimer une VM                            |
| **Stockage**                | `az storage account list --output table`                                                             | Lister les comptes de stockage              |
|                            | `az storage account create --name <nom_du_compte> --resource-group <nom_du_groupe> --location <région> --sku Standard_LRS` | Créer un compte de stockage                 |
|                            | `az storage container list --account-name <nom_du_compte> --output table`                             | Lister les conteneurs de stockage           |
| **Réseau (NSG)**            | `az network nsg create --resource-group <nom_du_groupe> --name <nom_du_nsg>`                         | Créer un groupe de sécurité réseau (NSG)    |
|                            | `az network public-ip list --output table`                                                           | Lister les adresses IP publiques            |
| **SQL**                     | `az sql server list --output table`                                                                  | Lister les serveurs SQL                     |
|                            | `az sql server create --name <nom_serveur> --resource-group <nom_du_groupe> --location <région> --admin-user <nom_utilisateur> --admin-password <mot_de_passe>` | Créer un serveur SQL                        |
|                            | `az sql db create --resource-group <nom_du_groupe> --server <nom_serveur> --name <nom_bdd> --service-objective S0` | Créer une base de données SQL               |
| **Kubernetes (AKS)**        | `az aks list --output table`                                                                          | Lister les clusters AKS                     |
|                            | `az aks create --resource-group <nom_du_groupe> --name <nom_cluster> --node-count 3 --enable-addons monitoring --generate-ssh-keys` | Créer un cluster AKS                        |
|                            | `az aks get-credentials --resource-group <nom_du_groupe> --name <nom_cluster>`                        | Obtenir les informations du cluster AKS     |
| **Identité Managée**        | `az identity create --resource-group <nom_du_groupe> --name <nom_identité>`                           | Créer une identité managée                  |
|                            | `az identity list --output table`                                                                     | Lister les identités managées               |
| **Web Apps (App Service)**  | `az webapp create --resource-group <nom_du_groupe> --plan <nom_plan> --name <nom_webapp> --runtime "DOTNET|6.0"` | Créer une application Web                   |
| **Conteneurs (ACI)**        | `az container create --resource-group <nom_du_groupe> --name <nom_conteneur> --image <nom_image> --cpu 1 --memory 1 --dns-name-label <label_dns>` | Créer un conteneur                          |
