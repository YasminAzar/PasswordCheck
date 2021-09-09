#!/bin/bash
password=$1
echo $password
RED='\e[0;31m';
GREEN='\e[0;32m';
reset='\e[0m';

count="${#password}"
echo $count
if [[ ${count} -lt 10 ]];then
  echo -e ${RED}"Password length should be 10 characters \n"${reset}
  exit 1;
  fi
echo $password | grep "[A-Z]" | grep "[a-z]" | grep "[0-9]"
if [[ $? -ne 0 ]];then
echo -e ${RED}"Password must contains upparcase ,lowecase and number \n"${reset}
exit 1;
 fi
echo -e ${GREEN}"Strong Password \n"${reset}
exit 0;
