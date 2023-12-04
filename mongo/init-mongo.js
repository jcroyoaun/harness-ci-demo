db = db.getSiblingDB('company_db');

db.createUser({
  user: "myapp",
  pwd: "blanquito",
  roles: ["readWrite", "dbAdmin"]
});

db.grantRolesToUser("myapp", [
  { role: "readWrite", db: "company_db" },
  { role: "dbAdmin", db: "company_db" }
]);

db.createCollection("employees");

