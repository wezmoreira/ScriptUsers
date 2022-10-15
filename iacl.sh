#!/bin/bash

echo "Criando diretórios..."

mkdir /public
mkdir /adm
mkdir /ven
mkdir /sec

echo "Criando grupos de usuários..."

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Criando usuários..."

useradd usuario1 -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM
useradd usuario2 -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM
useradd usuario3 -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM

useradd usuario4 -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VEN
useradd usuario5 -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VEN
useradd usuario6 -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VEN

useradd usuario6 -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_SEC
useradd usuario6 -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_SEC
useradd usuario6 -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_SEC

echo "Especificando permissões dos diretórios..."

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /public

echo "Fim..."

