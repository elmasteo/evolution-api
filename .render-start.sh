#!/bin/bash

# Ejecutar migraciones de PostgreSQL
npx prisma migrate deploy --schema=./prisma/postgresql-schema.prisma

# Iniciar la API en el puerto que Render espera
PORT=${PORT:-3000}
echo "Iniciando en el puerto $PORT"
npm run start
