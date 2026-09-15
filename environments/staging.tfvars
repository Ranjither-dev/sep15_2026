environment = "staging"
vm_count    = 2

location            = "East US"
resource_group_name = "terra_infra"

vnet_address_space    = ["10.10.0.0/16"]
subnet_address_prefix = "10.10..0/24"

vm_size       = "Standard_B2s"
admin_username = "azureadmin"
