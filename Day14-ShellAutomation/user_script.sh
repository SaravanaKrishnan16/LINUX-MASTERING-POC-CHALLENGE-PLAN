#!/bin/bash

USER_TO_CHECK=$1

if [ -z "$USER_TO_CHECK" ]; then
  echo "❌ Please provide a username. Usage: ./system_report.sh <username>"
  exit 1
fi

echo "🔍 Report for user: $USER_TO_CHECK"
id $USER_TO_CHECK
groups $USER_TO_CHECK
