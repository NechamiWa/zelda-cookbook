#!/bin/sh
sleep 20
knex migrate:latest
knex seed:run

node server.js