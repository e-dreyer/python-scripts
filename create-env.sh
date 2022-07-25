#!/bin/bash

# Get the arguments
while getopts n: flag
do
  case "${flag}" in
    n) name=${OPTARG};;
  esac
done

# Create the virutal environment
echo "Creating virtual environment: ${name}..."
python3 -m venv ${name}

cd ./${name}

# Create an empty requirements file
echo "Creating empty requirements.txt"
touch requirements.txt

echo "cd ${name}/"
echo "START: source bin/activate"
echo "STOP: deactivate"
