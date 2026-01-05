#!/bin/bash

# Start PHP development server on localhost:3000
echo "Starting BALTACI Artisan Kitchen development server..."

# Check if port 3000 is already in use
if lsof -ti:3000 > /dev/null 2>&1; then
    echo "Port 3000 is already in use. Stopping existing server..."
    kill $(lsof -ti:3000)
    sleep 1
    echo "Previous server stopped."
fi

echo "Server will be available at: http://localhost:3000"
echo "Press Ctrl+C to stop the server"
echo ""

php -S localhost:3000

