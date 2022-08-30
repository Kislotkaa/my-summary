#!/bin/sh
curl \
    --header "Content-type: application/json" \
    --request POST \
    --data '{
    "email":"admin@admin.ru",
    "password":"admin"

}' \
    https://api.key-food.ru/auth/login
    