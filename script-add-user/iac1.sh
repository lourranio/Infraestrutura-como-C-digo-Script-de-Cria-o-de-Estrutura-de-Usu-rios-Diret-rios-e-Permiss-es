#!/bin/bash
echo " *********** "
echo " Criando diretórios !_!"
echo " *********** "

DIR="/publico"
if [ -d "$DIR" ]; then
  ### Take action if $DIR exists ###
  echo "O  ${DIR} ja existe."
else
  ###  Control will jump here if $DIR does NOT exists ###
  mkdir /publico
  echo "O ${DIR} nao existe entao foi criado.  "
fi


publico="/adm"
[ -d "${publico}" ] &&  echo "O diretorio $d existe." || mkdir /adm 

ven="/ven"
[ -d "${ven}" ] &&  echo "O diretorio $d existe." || mkdir /ven 

sec="/sec"
[ -d "${sec}" ] &&  echo "O diretorio $d existe." || mkdir /sec 


#   mkdir /publico
#mkdir /adm
#mkdir /ven
#mkdir /sec

echo " *********** "
echo " Criando grupos de usuários !_! "
echo " *********** "

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC
echo "  "
echo " *********** "
echo " Criando usuários !_! "
echo " *********** "
echo "  "

useradd carlos -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM
useradd maria -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM
useradd joao -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM

useradd debora -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VEN
useradd sebastiana -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VEN
useradd roberto -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VEN

useradd josefina -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_SEC
useradd amanda -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_SEC
useradd rogerio -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_SEC
echo "  "
echo " *********** "
echo "Especificando permissões dos diretórios...."
echo " *********** "
echo "  "

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico

echo "  "
echo " *********** "
echo " Acabou !_! "
echo " *********** "
echo "  "

