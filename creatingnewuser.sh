#!/bin/bash

# Set the API endpoint URL for user creation
API_URL="https://petstore.swagger.io/v2/user"

# Define the JSON representation for user creation
JSON_DATA='{
  "id": 12345,
  "username": "john_doe",
  "firstName": "John",
  "lastName": "Doe",
  "email": "john.doe@example.com",
  "password": "secretpassword",
  "phone": "123-456-7890"
}'

# Make the curl request to create the user
echo "Creating user 'john_doe'..."
curl -X POST "$API_URL" -H "Content-Type: application/json" -d "$JSON_DATA"
