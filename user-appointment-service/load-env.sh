#!/bin/bash

# Load environment variables from .env file

echo "Loading environment variables from .env file..."

# set environment variables
export SPRING_DATASOURCE_URL="jdbc:postgresql://localhost:5432/pulseiq_db?currentSchema=pulseiq"
export SPRING_DATASOURCE_USERNAME="pulseiq_user"
export SPRING_DATASOURCE_PASSWORD="***********"
export JWT_SECRET="**************************************************"
export SERVER_PORT="8085"
export SERVER_ADDRESS="0.0.0.0"
export JWT_EXPIRATION="86400000"
export FIREBASE_ENABLED="true"

#Firebase JSON (multi-line)
export FIREBASE_JSON='{"type": "service_account","project_id": "***************","private_key_id": "****************************************","private_key": "-----BEGIN PRIVATE KEY-----\n****************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************\n-----END PRIVATE KEY-----\n","client_email": "******************************@***************.iam.gserviceaccount.com","client_id": "*********************","auth_uri": "https://accounts.google.com/o/oauth2/auth","token_uri": "https://oauth2.googleapis.com/token","auth_provider_x509_cert_url": "https://www.googleapis.com/oauth2/v1/certs","client_x509_cert_url": "https://www.googleapis.com/robot/v1/metadata/x509/*****************************%40***************.iam.gserviceaccount.com","universe_domain": "googleapis.com"}'

echo "environment variables loaded successfully!"
