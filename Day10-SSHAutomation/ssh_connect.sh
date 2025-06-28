#!/bin/bash

USER="saravana"
HOST="localhost"
PORT=22  # Change to 2222 if using custom port

echo "🔐 Connecting to $HOST as $USER ..."
ssh -p $PORT $USER@$HOST
