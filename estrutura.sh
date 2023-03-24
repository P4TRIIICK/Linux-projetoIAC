#!/bin/bash

echo "Criando diretórios..."

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Criando grupos..."

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Criando usuários..."

useradd carlos -c "CARLOS_EMPRESA" -m -s /bin/bash -p $(openssl passwd -1 Senha123) -g GRP_ADM
passwd carlos -e
useradd maria -c "MARIA_EMPRESA" -m -s /bin/bash -p $(openssl passwd -1 Senha123) -g GRP_ADM
passwd maria -e
useradd joao_ -c "JOAO_EMPRESA" -m -s /bin/bash -p $(openssl passwd -1 Senha123) -g GRP_ADM
passwd joao_ -e

useradd debora -c "DEBORA_EMPRESA" -m -s /bin/bash -p $(openssl passwd -1 Senha123) -g GRP_VEN
passwd debora -e
useradd sebastiana -c "SEBASTIANA_EMPRESA" -m -s /bin/bash -p $(openssl passwd -1 Senha123) -g GRP_VEN
passwd sebastiana -e
useradd roberto -c "ROBERTO_EMPRESA" -m -s /bin/bash -p $(openssl passwd -1 Senha123) -g GRP_VEN
passwd roberto -e

useradd josefina -c "JOSEFINA_EMPRESA" -m -s /bin/bash -p $(openssl passwd -1 Senha123) -g GRP_SEC
passwd josefina -e
useradd amanda -c "AMANDA_EMPRESA" -m -s /bin/bash -p $(openssl passwd -1 Senha123) -g GRP_SEC
passwd amanda -e
useradd rogerio -c "ROGERIO_EMPRESA" -m -s /bin/bash -p $(openssl passwd -1 Senha123) -g GRP_SEC
passwd rogerio -e

chown root:GRP_ADM  /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec
chown root:root /publico

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico

echo "Finalizado"
