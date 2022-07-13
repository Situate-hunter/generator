#!/bin/sh

openssl pkcs12 -export -out  client.pfx -inkey client.key -in client.crt -passout pass:123ewqasdcxz

