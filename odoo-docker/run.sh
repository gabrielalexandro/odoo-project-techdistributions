#!/usr/bin/env bash

# Levantar contenedores
docker-compose up -d --build

# Crear carpetas si no existen
mkdir -p logs
chmod -R 777 logs

# Manejar logs rotativos
MAX_SIZE=$((10 * 1024 * 1024))
if [[ -f logs/app.log && $(stat -c%s logs/app.log) -ge $MAX_SIZE ]]; then
    mv logs/app.log logs/app-$(date +"%Y%m%d%H%M%S").log
    touch logs/app.log
fi

# Seguimiento de logs
docker-compose logs -f >> logs/app.log &
echo "Odoo y PostgreSQL han sido levantados correctamente."