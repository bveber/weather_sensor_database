#!/bin/bash
cat $1 | docker exec -i timescaledb psql -U user -d sensor_data
