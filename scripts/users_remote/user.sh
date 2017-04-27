#!/bin/bash

API="${API_ORIGIN:-https://burger-joint-p2.herokuapp.com}"
URL_PATH="/users"
curl "${API}${URL_PATH}/$ID" \
  --include \
  --request GET \
  --header "Authorization: Token token=$TOKEN"

echo
