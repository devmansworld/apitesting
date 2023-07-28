#!/bin/bash

# Base URL for the Swagger Pet Store API
BASE_URL="https://petstore.swagger.io/v2"

# Function to log in and obtain an authentication token
function login() {
    URL="${BASE_URL}/user/login"
    DATA='{"username": "john_doe", "password": "secretpassword"}'
    echo "Logging in..."
    AUTH_TOKEN=$(curl -s -X POST -H "Content-Type: application/json" -d "${DATA}" "${URL}" | jq -r '.message')
    echo "Logged in as 'john_doe'. Authentication Token: ${AUTH_TOKEN}"
}

# Call the function to log in
login
