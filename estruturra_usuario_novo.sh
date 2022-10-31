#!/bin/bash

echo "Criando diretório"

mkdir /infraestrutura	

echo "Criando Grupo de usuários"

groupadd GRP_INFRA

echo "Criando usuários"

useradd otonio -m -s /bin/bash -p $(openssl passwd -crypt Senha123456) -G GRP_INFRA

echo "Especificando permissões dos diretórios"

chown root:GRP_INFRA /infraestrutura

chmod 770 /infraestrutura

echo "Fim"