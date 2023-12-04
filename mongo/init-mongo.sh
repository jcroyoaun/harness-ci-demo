#!/bin/bash

# Start MongoDB shell with authentication
mongosh --authenticationDatabase "admin" -u "myapp" -p "blanquito" localhost:27017 <<EOF

# Use the admin database
use admin;

# Get details of the user "myapp"
db.getUser("myapp");

# Grant roles to the user "myapp"
db.grantRolesToUser("myapp", [
  {role: "readWrite", db: "company_db"},
  {role: "dbAdmin", db: "company_db"}
]);

# Switch to the company_db database
use company_db;

# Create a new collection "employees"
db.createCollection("employees");

EOF

