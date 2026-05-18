#!/usr/bin/with-contenv bashio
export DB_PATH="/share/familyhub/familyhub.db"
export PORT=3000
export NODE_ENV=production
mkdir -p /share/familyhub
bashio::log.info "Starting Family Hub on port 3000..."
exec node /app/index.js
