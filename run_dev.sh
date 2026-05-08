#!/bin/bash

echo "🚀 Starting development environment..."

# Check venv
if [ ! -d "venv" ]; then
    echo "❌ venv not found. Create it using: python -m venv venv"
    exit 1
fi

# Activate venv
source venv/bin/activate
echo "✅ Virtual environment activated"

# Start server
echo "🔥 Starting FastAPI server..."
uvicorn main:app --reload &

# Open browser
sleep 2
xdg-open http://127.0.0.1:8000

echo "🎉 Done! Server running at http://127.0.0.1:8000"