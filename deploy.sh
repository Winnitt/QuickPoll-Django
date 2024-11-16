#!/bin/bash

echo "Stopping existing Django server..."
pkill -f manage.py || true

echo "Starting Django server on port 8000..."
nohup python manage.py runserver 0.0.0.0:8000 > server.log 2>&1 &
