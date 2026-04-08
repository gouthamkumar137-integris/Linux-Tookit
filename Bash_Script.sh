#!/bin/bash

# Ask for project name
read -p "Enter project name: " project

# Create folder
mkdir "$project"
cd "$project" || exit

# Initialize git
git init

# Create README
echo "# $project" > README.md

# First commit
git add .
git commit -m "Initial commit"

echo "Project '$project' created and Git initialized!"

