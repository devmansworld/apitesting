#!/bin/bash

# Base URL for the Swagger Pet Store API
BASE_URL="https://petstore.swagger.io/v2"

# agrega nueva pet a la tienda 
function add_pet() {
    URL="${BASE_URL}/pet"
    DATA='{"id": 12345, "name": "Fluffy", "status": "available"}'
    echo "Adding a new pet..."
    curl -X POST -H "Content-Type: application/json" -d "${DATA}" "${URL}"
    echo
}

# busca pets por status
function find_pets_by_status() {
    URL="${BASE_URL}/pet/findByStatus?status=available"
    echo "Finding pets by status 'available'..."
    curl -X GET "${URL}"
    echo
}

# borra pet por ID
function delete_pet() {
    PET_ID="12345"  # Replace with the ID of the pet you want to delete
    URL="${BASE_URL}/pet/${PET_ID}"
    echo "Deleting a pet with ID ${PET_ID}..."
    curl -X DELETE "${URL}"
    echo
}

# Call the functions to perform pet operations
add_pet
find_pets_by_status
delete_pet
