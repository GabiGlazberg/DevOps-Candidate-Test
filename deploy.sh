#!/bin/bash

# To run this code
# sh ./deploy.sh 1.1.0

# Get the version number from the argument
version=$1

# Set version
npm version ${version}

# Check if README exists
if [ -f README.md ]; then
  echo "README.md exists."
  # Delete if exeists
  rm README.md
else
  echo "README.md does not exist."
fi

# Download README file
wget https://raw.githubusercontent.com/GabiGlazberg/DevOps-Candidate-Test/main/README.md

# Zip all files with the new version 
zip -r app-${version}.zip .

