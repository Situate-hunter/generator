#!/bin/bash

random=$(pwgen -A 8 1)
echo $random
a=".key"
b=".crt"
c=".pfx"
key="$random$a"
crt="$random$b"
pfx="$random$c"
openssl req -new -newkey rsa:2048 -nodes -keyout client.key -x509 -days 365 \ -subj "/C=RU/ST=Tyumen region/L=Tyumen/O=EXAMPLE/OU=CRM/CN=crm.example.ru/emailAddress=crm@example.ru" \ -out client.crt
openssl pkcs12 -export -out  client.pfx -inkey client.key -in client.crt -passout pass:123ewqasdcxz
openssl req -new -newkey rsa:2048 -nodes -keyout server.key -x509 -days 365 \ -subj "/C=RU/ST=Tyumen region/L=Tyumen/O=EXAMPLE/OU=CRM/CN=crm.example.ru/emailAddress=crm@example.ru" \ -out server.crt
