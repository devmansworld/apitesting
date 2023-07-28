#!/bin/bash

# Base URL for the Swagger Pet Store API
BASE_URL="https://petstore.swagger.io/v2"

# Function to get pets with "available" status
function get_available_pets() {
    URL="${BASE_URL}/pet/findByStatus"
    echo "Finding pets with status 'available'..."
    RESPONSE=$(curl -s -X GET "${URL}" -G --data-urlencode "status=available")
    echo "Available Pets:"
    echo "${RESPONSE}"
}

# Call the function to get available pets
get_available_pets
