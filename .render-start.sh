#!/bin/bash

echo "Ejecutando migraciones con PostgreSQL"
npx prisma migrate deploy --schema=./prisma/postgresql-schema.prisma

echo "Iniciando Evolution API"
npm run start
