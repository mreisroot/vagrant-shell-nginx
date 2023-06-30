# Implantação de aplicação web usando shell Script

## Introdução

Neste projeto, há a criação de uma VM Ubuntu usando o Vagrant, que será provisionada através de um shell script.

Há a sincronização de uma pasta chamada [./data](data), que contém o arquivo html, com a pasta interna da máquina virtual "vagrant\_data".

Após a criação da máquina, o Vagrant acionará o shell como provisionador após ler a linha.

`vagrant.config.vm.provision "shell", path: "provision.sh"`

O provisionamento realizará as seguintes tarefas:

* Instalar o nginx
* Definir o nome da máquina
* Copiar o arquivo [./cep.html](cep.html) para o diretório /var/www/html

Portanto, o shell script implantará a aplicação web de consulta de código postal [VIACEP](https://viacep.com.br/exemplo/jquery/)

## Como utilizar este projeto

Para criar a VM, execute:

`vagrant up`

Para acessar a VM, execute:

`vagrant ssh`

Para acessar a aplicação web, digite na aba de pesquisa de um navegador de internet:

`192.168.56.2/cep.html`

Para destruir a VM, execute:

`vagrant destroy -f`
