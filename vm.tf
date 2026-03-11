
resource "azurerm_linux_virtual_machine" "webvm1" {
  name                = "webvm1"
  resource_group_name = azurerm_resource_group.rg.name
  location            = azurerm_resource_group.rg.location
  size                = "Standard_L2aos_v4"
  admin_username      = "rootadmin"

  network_interface_ids = [
    azurerm_network_interface.web_nic1.id
  ]

  admin_password = "Prakash@12345"
  disable_password_authentication = false

  os_disk {
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }

  source_image_reference {
    publisher = "Canonical"
    offer     = "0001-com-ubuntu-server-jammy"
    sku       = "22_04-lts-gen2"
    version   = "latest"
  }
}

resource "azurerm_linux_virtual_machine" "webvm2" {
  name                = "webvm2"
  resource_group_name = azurerm_resource_group.rg.name
  location            = azurerm_resource_group.rg.location
  size                = "Standard_L2aos_v4"
  admin_username      = "rootadmin"

  network_interface_ids = [
    azurerm_network_interface.web_nic2.id
  ]

  admin_password = "Prakash@12345"

  disable_password_authentication = false

  os_disk {
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }

 source_image_reference {
  publisher = "Canonical"
  offer     = "0001-com-ubuntu-server-jammy"
  sku       = "22_04-lts-gen2"
  version   = "latest"
}
}



resource "azurerm_linux_virtual_machine" "dbvm" {
  name                = "dbvm"
  resource_group_name = azurerm_resource_group.rg.name
  location            = azurerm_resource_group.rg.location
  size                = "Standard_L2aos_v4"
  admin_username      = "rootadmin"

  network_interface_ids = [
    azurerm_network_interface.db_nic.id
  ]

  admin_password = "Prakash@12345"
  disable_password_authentication = false

  os_disk {
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }
source_image_reference {
  publisher = "Canonical"
  offer     = "0001-com-ubuntu-server-jammy"
  sku       = "22_04-lts-gen2"
  version   = "latest"
}
}
