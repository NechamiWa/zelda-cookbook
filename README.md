# Zelda Cookbook Application

The Legend of Zelda game features the ability to gather ingredients from around the world and cook them into different recipes. Each recipe gives Link different benefits such as recovering health and gaining resistance to cold. This app provides an easy-to-use interface that allows users to see what ingredients are required to make each recipe. No more wasting rare ingredients on failed recipes!

## Components

The Zelda application includes three components:
1. **Database**: A PostgreSQL 12 database named `zelda_cookbook`.
2. **Backend**: A Node.js API server using Node 12.
3. **Frontend**: A Node.js UI server using Node 8.

## Running the Application

To run the application using Docker Compose, follow these steps:

1. **Database Setup**
    - Set up a PostgreSQL server with a database named `zelda_cookbook`.
    - Ensure the PostgreSQL user `postgres` uses the password `postgres`.
    - Database data should persist between container restarts.

2. **Backend Setup**
    - Install dependencies with `npm install`.
    - Migrate database tables using `knex migrate:latest`.
    - Seed the tables using `knex seed:run`.
    - Start the service with `node server.js`.
    - The database connection configuration can be found in `knexfile.js`.
    - You can check that the backend works using `curl` or a browser at `/api/v1/ingredients`.

3. **Frontend Setup**
    - Install dependencies with `npm install`.
    - Start the service with `npm start`.
    - To check frontend functionality, use a browser to see a beautiful GUI with ingredients and recipes.
    - Note: You will need to fix app URLs in `apiCalls.js`.

4. **Production**
    - Run the backend in production mode on port 3010.

## Docker Compose

To run the entire application with Docker Compose, use the following command:

```bash
docker-compose up
```

This command will start all the services defined in the docker-compose.yml file, ensuring that the database, backend, and frontend are properly set up and running.

Enjoy exploring and cooking in the world of Zelda!