#!/bin/bash


openssl req -new -newkey rsa:2048 -nodes -keyout client.key -x509 -days 365 \-subj "/C=RU/ST=Tyumen region/L=Tyumen/O=EXAMPLE/OU=CRM/CN=crm.example.ru/emailAddress=crm@example.ru" \-out client.crt


openssl req -new -newkey rsa:2048 -nodes -keyout server.key \-subj "/C=RU/ST=Tyumen region/L=Tyumen/O=EXAMPLE/OU=CRM/CN=User example1/emailAddress=user@example1.ru" \-out server.csr
