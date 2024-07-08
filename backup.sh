#!/bin/bash
docker exec -t timescaledb pg_dump -U user sensor_data > data/backup_$(date +%Y%m%d).sql
