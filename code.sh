#!/bin/bash

CLIENT_ID='838987397758-g75nd4rj5jhdmp82ogih6b14k7ti7c90.apps.googleusercontent.com'
CLIENT_SECRET='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'
URI='https://learn.operatoroverload.com/~nsinluenam00/oauth/'
echo "content-type: application/json"
echo ""

CODE=$QUERY_STRING

#
# get token from OAuth provider
#
# NOTE:  in a real system, we would keep the tokens on the server, but in this
# example, we simply return all the tokens to the client
TOKEN=$(curl "https://oauth2.googleapis.com/token" \
  -d "code=${CODE}" \
  -d "client_id=${CLIENT_ID}" \
  -d "client_secret=${CLIENT_SECRET}" \
  -d "redirect_uri=${URI}" \
  -d "grant_type=authorization_code")

# We can now use the token in our application
# Here we simply echo it
# Your job is to modify the following so we can retrieve the user info using the token.
echo "$TOKEN"
