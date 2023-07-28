#!/bin/bash

# setea las url del endpoint 
API_BASE_URL="https://petstore.swagger.io/v2"
CREATE_USER_URL="$API_BASE_URL/user"
LOGIN_URL="$API_BASE_URL/user/login"

# define representacion en json
USER_DATA='{
  "id": 12345,
  "username": "john_doe",
  "firstName": "John",
  "lastName": "Doe",
  "email": "john.doe@example.com",
  "password": "secretpassword",
  "phone": "123-456-7890"
}'

# crea el usuario 
echo "Creating user 'john_doe'..."
curl -X POST "$CREATE_USER_URL" -H "Content-Type: application/json" -d "$USER_DATA"

# define la data de usuario 
LOGIN_DATA='{
  "username": "john_doe",
  "password": "secretpassword"
}'

# ejecuta el login 
echo "Logging in as 'john_doe'..."
login_response=$(curl -X POST "$LOGIN_URL" -H "Content-Type: application/json" -d "$LOGIN_DATA")

# extrae el token de auth
auth_token=$(echo "$login_response" | jq -r '.message')

# Use the authentication token for further API requests, such as creating a purchase order
# For example:
# curl -X POST "https://petstore.swagger.io/v2/store/order" -H "Authorization: Bearer $auth_token" -H "Content-Type: application/json" -d '{"petId": 789, "quantity": 2, "shipDate": "2023-07-30", "status": "placed", "complete": true}'

echo "Logged in successfully as 'john_doe'. Authentication Token: $auth_token"
