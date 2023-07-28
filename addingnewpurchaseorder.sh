#!/bin/bash

# setear el endpoint uri 
API_URL="https://petstore.swagger.io/v2/store/order"

# definir la data representacional en json 
JSON_DATA='{
  "id": 12345,
  "petId": 789,
  "quantity": 2,
  "shipDate": "2023-07-30",
  "status": "placed",
  "complete": true
}'

# curl request para la PO
curl -X POST "$API_URL" -H "Content-Type: application/json" -d "$JSON_DATA"
