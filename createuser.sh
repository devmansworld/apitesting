#!/bin/bash

# Base URL for the Swagger Pet Store API
BASE_URL="https://petstore.swagger.io/v2"

# Function to create a new user
function create_user() {
    URL="${BASE_URL}/user"
    DATA='{"id": 1, "username": "john_doe", "firstName": "John", "lastName": "Doe", "email": "john.doe@example.com", "password": "secretpassword", "phone": "1234567890"}'
    echo "Creating a new user..."
    curl -X POST -H "Content-Type: application/json" -d "${DATA}" "${URL}"
    echo
}

# Call the function to create a user
create_user
