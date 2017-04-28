#!/bin/bash

API="${API_ORIGIN:-https://burger-joint-p2.herokuapp.com}"
URL_PATH="/sign-up"

# curl "${API}${URL_PATH}" \
#   --include \
#   --request POST \
#   --header "Content-Type: application/json" \
#   --data '{
#     "credentials": {
#       "email": "'"${EMAIL}"'",
#       "password": "'"${PASSWORD}"'",
#       "password_confirmation": "'"${PASSWORD}"'"
#     }
#   }'


  curl "${API}${URL_PATH}" \
    --include \
    --request POST \
    --header "Content-Type: application/json" \
    --data '{
      "credentials": {
        "email": "2@email.com",
        "password": "two",
        "password_confirmation": "two"
      }
    }'


echo
