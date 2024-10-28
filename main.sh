#!/bin/bash

echo "1) phpMyAdmin"
echo "2) Pg Admin"
echo "3) Keycloak Standalone"
echo "4) quit"

read -p "Please select the application you want to install : " choice

case $choice in
    1) kubectl create -f https://raw.githubusercontent.com/ilham-suyadi/Kubernetes-Manifest/main/ready-to-use/phpMyAdmin.yaml ;;
    2) kubectl create -f https://raw.githubusercontent.com/ilham-suyadi/Kubernetes-Manifest/main/ready-to-use/pg-admin.yaml ;;
    3) kubectl create -f https://raw.githubusercontent.com/keycloak/keycloak-quickstarts/latest/kubernetes/keycloak.yaml ;;
    4) echo "We're done";;
    *) echo "Oops, Invalid choice";;
esac