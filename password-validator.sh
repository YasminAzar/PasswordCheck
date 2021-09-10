#!/bin/bash
password=$1
passwordFromFile=$2
RED='\e[0;31m';
GREEN='\e[32m';
reset='\e[0m';
if [[ -n "$passwordFromFile" ]];then
   password=$(<$passwordFromFile)
 fi
count="${#password}"
if [[ ${count} -lt 10 ]];then
  echo -e ${RED}"Password length should be 10 characters or more" ${reset}
  exit 1;
  fi
echo $password | grep "[a-z]" | grep "[A-Z]" | grep "[0-9]"
if [[ $? -ne 0 ]];then
echo -e ${RED}"Password must contains lowecase, upparcase and number"${reset}
exit 1;
 fi
echo -e ${GREEN}"Strong Password"${reset}
exit 0;
