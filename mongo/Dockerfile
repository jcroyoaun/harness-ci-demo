# docker run -e MONGO_INITDB_ROOT_USERNAME=myapp -e MONGO_INITDB_ROOT_PASSWORD=blanquito -p 27017:27017 teachable-mongo-db

FROM mongo

# Copy the initialization script into the container
COPY init-mongo.js /docker-entrypoint-initdb.d/
