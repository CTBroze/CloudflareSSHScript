#!/bin/bash

#set your data
DOMAIN=Domain
EMAIL=Cloudflare Account
API_KEY=Cloudflare Global API Key
A_RECORD_NAME=A Record

#ssh config
USERNAME=SSH User Name
PORT=SSH Port

#cloudflareAPI and set Header
API="https://api.cloudflare.com/client/v4"
TYPE="A"
H_AUTH_EMAIL="X-Auth-Email:$EMAIL"
H_API_KEY="X-Auth-Key:$API_KEY"
H_CONTENT="Content-Type:application/json"

#GET zoneID
ZONE_ID=$(curl -s -X GET "$API/zones?name=$DOMAIN" \
		-H $H_AUTH_EMAIL \
		-H $H_API_KEY \
		-H $H_CONTENT \
		| cut -d',' -f1 | sed -e s/'"'//g | cut -d':' -f3)

#GET IP
IP=$(curl -s -X GET "$API/zones/$ZONE_ID/dns_records?type=$TYPE&name=$A_RECORD_NAME" \
		-H $H_AUTH_EMAIL \
		-H $H_API_KEY \
		-H $H_CONTENT \
		| cut -d',' -f6 | sed -e s/'"'//g | cut -d':' -f2)

echo "connect your server IP:$IP PORT:$PORT"
ssh $USERNAME@$IP -p $PORT
